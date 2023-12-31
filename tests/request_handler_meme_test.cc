#include "gtest/gtest.h"
#include "request_handler/request_handler_meme.h"
#include <boost/asio.hpp>
#include <boost/beast/core.hpp>
#include <boost/beast/http.hpp>
#include <boost/beast/version.hpp>
#include <iostream>
#include <string>

using boost::asio::ip::tcp;
using request = boost::beast::http::request<boost::beast::http::string_body>;
using reply = boost::beast::http::response<boost::beast::http::string_body>;
using request_parser = boost::beast::http::request_parser<boost::beast::http::string_body>;

class RequestHandlerMemeTest : public ::testing::Test {
    public:
         using meme_data = Request_Handler_Meme::meme_data; 
    protected:
        void SetUp() override {
            // testing::internal::CaptureStdout();
            data_path = "../Testing/meme";    // Root path to serve files from
            location = "/meme";  // Location to match with root directory
            boost::filesystem::create_directory(data_path);
            std::ofstream file(data_path+"/meme_id_tracker.txt");//make meme_id_tracker.txt
            file << 0; //initialize meme_id_tracker
            file.close();
        
            
        }

        void TearDown() override { 

          boost::filesystem::remove_all(data_path);
        }

        path_uri data_path;
        path_uri location;

};
TEST_F(RequestHandlerMemeTest, CreateMemeHandler)
{
    auto meme_map = std::make_shared<std::unordered_map<std::string, Request_Handler_Meme::meme_data>>();
    auto map_locks = std::make_shared<std::unordered_map<std::string, std::unique_lock<std::mutex>>>();
    auto meme_map_lock = std::make_shared<std::shared_mutex>();
    path_uri url = "/meme";
    EXPECT_NO_THROW(Request_Handler_Meme* meme_handler = new Request_Handler_Meme(data_path, location, url, map_locks, meme_map, meme_map_lock));
}
TEST_F(RequestHandlerMemeTest, RunHandlePostCreateSuccess)
{
    auto meme_map = std::make_shared<std::unordered_map<std::string, Request_Handler_Meme::meme_data>>();
    auto map_locks = std::make_shared<std::unordered_map<std::string, std::unique_lock<std::mutex>>>();
    auto meme_map_lock = std::make_shared<std::shared_mutex>();
    request request_;
    request_.method(boost::beast::http::verb::post);
    request_.version(11);  // HTTP/1.1
    request_.target("/meme/create");
    request_.set(boost::beast::http::field::host, "localhost:8080");
    request_.body() =R"({
                        "name": "Crying Bro",
                        "nameURL": "crying_bro",
                        "memeImage": "data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA"
                        })"; // Set the body with valid JSON content
    request_.prepare_payload();  // Prepare payload
    reply response_;
    path_uri url(request_.target().to_string());
    Request_Handler_Meme* meme_handler = new Request_Handler_Meme(data_path, location, url, map_locks, meme_map, meme_map_lock);
    meme_handler->handle_request(request_, &response_);
    EXPECT_EQ(response_.body(), "{file name: 1.json}\n");
    
    std::ifstream file("../Testing/meme/1.json");
    std::stringstream buffer;
    buffer << file.rdbuf();
    std::string body = buffer.str();
    EXPECT_EQ(body,"{\n    \"likes\": [],\n    \"memeImage\": \"data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA\",\n    \"name\": \"Crying Bro\",\n    \"nameURL\": \"crying_bro\"\n}");
    boost::filesystem::remove("../Testing/meme/1.json");
    delete meme_handler;
}
TEST_F(RequestHandlerMemeTest, RunHandlePostCreateFailure)
{
    
    auto meme_map = std::make_shared<std::unordered_map<std::string, Request_Handler_Meme::meme_data>>();
    auto map_locks = std::make_shared<std::unordered_map<std::string, std::unique_lock<std::mutex>>>();
    auto meme_map_lock = std::make_shared<std::shared_mutex>();
    request request_;
    request_.method(boost::beast::http::verb::post);
    request_.version(11);  // HTTP/1.1
    request_.target("/meme/create");
    request_.set(boost::beast::http::field::host, "localhost:8080");
    request_.body() =R"({
                        "name": "Crying Bro",
                        "nameURL": "crying_bro",
                        "memeImage": "data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA")"; // Set the body with valid JSON content
    request_.prepare_payload();  // Prepare payload
    reply response_;
    path_uri url(request_.target().to_string());
    Request_Handler_Meme* meme_handler = new Request_Handler_Meme(data_path, location, url, map_locks, meme_map, meme_map_lock);
    meme_handler->handle_request(request_, &response_);
    EXPECT_EQ(response_.result(), boost::beast::http::status::unsupported_media_type);
    //EXPECT_EQ(response_.result(), boost::beast::http::status::not_found);
    delete meme_handler;
}

TEST_F(RequestHandlerMemeTest, RunHandlePostInvalidJson)
{ 
    
    auto meme_map = std::make_shared<std::unordered_map<std::string, Request_Handler_Meme::meme_data>>();
    auto map_locks = std::make_shared<std::unordered_map<std::string, std::unique_lock<std::mutex>>>();
    auto meme_map_lock = std::make_shared<std::shared_mutex>();
    request request_;
    request_.method(boost::beast::http::verb::post);
    request_.version(11);  // HTTP/1.1
    request_.target("/meme/create");
    request_.set(boost::beast::http::field::host, "localhost:8080");
    request_.body() = "{ definitely not a json payload }";  // Set the body with invalid JSON content
    request_.prepare_payload();  // Prepare payload
    reply response_;
    path_uri url(request_.target().to_string());
    Request_Handler_Meme* meme_handler = new Request_Handler_Meme(data_path, location, url, map_locks, meme_map, meme_map_lock);
    meme_handler->handle_request(request_, &response_);

    EXPECT_EQ(response_.result(), boost::beast::http::status::unsupported_media_type);
    delete meme_handler;
}
TEST_F(RequestHandlerMemeTest, RunHandlePostlikeSuccess)
{          
    auto meme_map = std::make_shared<std::unordered_map<std::string, Request_Handler_Meme::meme_data>>();
    auto map_locks = std::make_shared<std::unordered_map<std::string, std::unique_lock<std::mutex>>>();
    auto meme_map_lock = std::make_shared<std::shared_mutex>();
    request request_;
    request_.method(boost::beast::http::verb::post);
    request_.version(11);  // HTTP/1.1
    request_.target("/meme/create");
    request_.set(boost::beast::http::field::host, "localhost:8080");
    request_.body() =R"({
                        "name": "Crying Bro",
                        "nameURL": "crying_bro",
                        "memeImage": "data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA"
                        })"; // Set the body with valid JSON content
    request_.prepare_payload();  // Prepare payload
    reply response_;
    path_uri url(request_.target().to_string());
    Request_Handler_Meme* meme_handler = new Request_Handler_Meme(data_path, location, url, map_locks, meme_map, meme_map_lock);
    meme_handler->handle_request(request_, &response_);
    EXPECT_EQ(response_.body(), "{file name: 1.json}\n");

    request request_2;
    request_2.method(boost::beast::http::verb::post);
    request_2.version(11);  // HTTP/1.1
    request_2.target("/meme/list/Crying Bro/like");
    request_2.set(boost::beast::http::field::host, "localhost:8080");
    request_2.body() ="192.168.0.1"; // Set the body with valid JSON content
    request_2.prepare_payload();  // Prepare payload
    reply response_2;
    path_uri url_2(request_2.target().to_string());
    Request_Handler_Meme* meme_handler_2 = new Request_Handler_Meme(data_path, location, url_2, map_locks, meme_map, meme_map_lock);
    meme_handler_2->handle_request(request_2, &response_2);
    std::ifstream file_content("../Testing/meme/1.json");
    std::stringstream buffer;
    buffer << file_content.rdbuf();
    std::string changed_body = buffer.str();
    EXPECT_EQ(changed_body, "{\"likes\":[\"192.168.0.1\"],\"memeImage\":\"data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA\",\"name\":\"Crying Bro\",\"nameURL\":\"crying_bro\"}");    
    delete meme_handler;
    boost::filesystem::remove("../Testing/meme/1.json");

}

TEST_F(RequestHandlerMemeTest, RunHandlePostlikeFailure)
{          
    auto meme_map = std::make_shared<std::unordered_map<std::string, Request_Handler_Meme::meme_data>>();
    auto map_locks = std::make_shared<std::unordered_map<std::string, std::unique_lock<std::mutex>>>();
    auto meme_map_lock = std::make_shared<std::shared_mutex>();
    request request_;
    request_.method(boost::beast::http::verb::post);
    request_.version(11);  // HTTP/1.1
    request_.target("/meme/create");
    request_.set(boost::beast::http::field::host, "localhost:8080");
    request_.body() =R"({
                        "name": "Crying Bro",
                        "nameURL": "crying_bro",
                        "memeImage": "data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA"
                        })"; // Set the body with valid JSON content
    request_.prepare_payload();  // Prepare payload
    reply response_;
    path_uri url(request_.target().to_string());
    Request_Handler_Meme* meme_handler = new Request_Handler_Meme(data_path, location, url, map_locks, meme_map, meme_map_lock);
    meme_handler->handle_request(request_, &response_);
    EXPECT_EQ(response_.body(), "{file name: 1.json}\n");

    request request_2;
    request_2.method(boost::beast::http::verb::post);
    request_2.version(11);  // HTTP/1.1
    request_2.target("/meme/list/crying_bro/like");
    request_2.set(boost::beast::http::field::host, "localhost:8080");
    request_2.body() ="192.168"; // Set the body with valid JSON content
    request_2.prepare_payload();  // Prepare payload
    reply response_2;
    path_uri url_2(request_2.target().to_string());
    Request_Handler_Meme* meme_handler_2 = new Request_Handler_Meme(data_path, location, url_2, map_locks, meme_map, meme_map_lock);
    meme_handler_2->handle_request(request_2, &response_2);
    std::ifstream file_content("../Testing/meme/1.json");
     EXPECT_EQ(response_2.body(), "{Invalid payload, Must be Ip_address : 192.168}\n");
    delete meme_handler;
    boost::filesystem::remove("../Testing/meme/1.json");

}
TEST_F(RequestHandlerMemeTest, RunHandleGETpopularity)
{          
    auto meme_map = std::make_shared<std::unordered_map<std::string, Request_Handler_Meme::meme_data>>();
    auto map_locks = std::make_shared<std::unordered_map<std::string, std::unique_lock<std::mutex>>>();
    auto meme_map_lock = std::make_shared<std::shared_mutex>();
    request request_;
    request_.method(boost::beast::http::verb::post);
    request_.version(11);  // HTTP/1.1
    request_.target("/meme/create");
    request_.set(boost::beast::http::field::host, "localhost:8080");
    request_.body() =R"({
                        "name": "Crying Bro",
                        "nameURL": "crying_bro",
                        "memeImage": "data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA"
                        })"; // Set the body with valid JSON content
    request_.prepare_payload();  // Prepare payload
    reply response_;
    path_uri url(request_.target().to_string());
    Request_Handler_Meme* meme_handler = new Request_Handler_Meme(data_path, location, url, map_locks, meme_map, meme_map_lock);
    meme_handler->handle_request(request_, &response_);
    EXPECT_EQ(response_.body(), "{file name: 1.json}\n");

    request request_2;
    request_2.method(boost::beast::http::verb::post);
    request_2.version(11);  // HTTP/1.1
    request_2.target("/meme/create");
    request_2.set(boost::beast::http::field::host, "localhost:8080");
    request_2.body() =R"({
                        "name": "Weeping Bro",
                        "nameURL": "weeping_bro",
                        "memeImage": "data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA"
                        })"; // Set the body with valid JSON content
    request_2.prepare_payload();  // Prepare payload
    reply response_2;
    meme_handler->handle_request(request_2, &response_2);
    EXPECT_EQ(response_2.body(), "{file name: 2.json}\n");

    request request_3;
    request_3.method(boost::beast::http::verb::post);
    request_3.version(11);  // HTTP/1.1
    request_3.target("/meme/list/Crying Bro/like");
    request_3.set(boost::beast::http::field::host, "localhost:8080");
    request_3.body() ="192.168.0.1"; // Set the body with valid JSON content
    request_3.prepare_payload();  // Prepare payload
    reply response_3;
    path_uri url_3(request_3.target().to_string());
    Request_Handler_Meme* meme_handler_3 = new Request_Handler_Meme(data_path, location, url_3, map_locks, meme_map, meme_map_lock);
    meme_handler_3->handle_request(request_3, &response_3);
    std::ifstream file_content_3("../Testing/meme/1.json");
    std::stringstream buffer_3;
    buffer_3 << file_content_3.rdbuf();
    std::string changed_body_3 = buffer_3.str();
    EXPECT_EQ(changed_body_3, "{\"likes\":[\"192.168.0.1\"],\"memeImage\":\"data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA\",\"name\":\"Crying Bro\",\"nameURL\":\"crying_bro\"}"); 

    request request_4;
    request_4.method(boost::beast::http::verb::post);
    request_4.version(11);  // HTTP/1.1
    request_4.target("/meme/list/Weeping Bro/like");
    request_4.set(boost::beast::http::field::host, "localhost:8080");
    request_4.body() ="192.168.0.1"; // Set the body with valid JSON content
    request_4.prepare_payload();  // Prepare payload
    reply response_4;
    path_uri url_4(request_4.target().to_string());
    Request_Handler_Meme* meme_handler_4 = new Request_Handler_Meme(data_path, location, url_4, map_locks, meme_map, meme_map_lock);
    meme_handler_4->handle_request(request_4, &response_4);
    std::ifstream file_content_4("../Testing/meme/2.json");
    std::stringstream buffer_4;
    buffer_4 << file_content_4.rdbuf();
    std::string changed_body_4 = buffer_4.str();
    EXPECT_EQ(changed_body_4, "{\"likes\":[\"192.168.0.1\"],\"memeImage\":\"data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA\",\"name\":\"Weeping Bro\",\"nameURL\":\"weeping_bro\"}"); 


    request request_5;
    request_5.method(boost::beast::http::verb::post);
    request_5.version(11);  // HTTP/1.1
    request_5.target("/meme/list/Crying Bro/like");
    request_5.set(boost::beast::http::field::host, "localhost:8080");
    request_5.body() ="192.168.0.2"; // Set the body with valid JSON content
    request_5.prepare_payload();  // Prepare payload
    reply response_5;
    path_uri url_5(request_5.target().to_string());
    Request_Handler_Meme* meme_handler_5 = new Request_Handler_Meme(data_path, location, url_5, map_locks, meme_map, meme_map_lock);
    meme_handler_5->handle_request(request_5, &response_5);
    std::ifstream file_content_5("../Testing/meme/1.json");
    std::stringstream buffer_5;
    buffer_5 << file_content_5.rdbuf();
    std::string changed_body_5 = buffer_5.str();
    EXPECT_EQ(changed_body_5, "{\"likes\":[\"192.168.0.1\",\"192.168.0.2\"],\"memeImage\":\"data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA\",\"name\":\"Crying Bro\",\"nameURL\":\"crying_bro\"}");

    request request_6;
    request_6.method(boost::beast::http::verb::get);
    request_6.version(11);  // HTTP/1.1
    request_6.target("/meme/list/popularity");
    request_6.set(boost::beast::http::field::host, "localhost:8080");
    request_6.body() ="192.168.0.1"; // Set the body with valid JSON content
    request_6.prepare_payload();  // Prepare payload
    reply response_6;
    path_uri url_6(request_6.target().to_string());
    Request_Handler_Meme* meme_handler_6 = new Request_Handler_Meme(data_path, location, url_6, map_locks, meme_map, meme_map_lock);
    meme_handler_6->handle_request(request_6, &response_6);

    EXPECT_EQ(response_6.body(), "[\n    {\n        \"likes\": [\n            \"192.168.0.1\",\n            \"192.168.0.2\"\n        ],\n        \"memeImage\": \"data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA\",\n        \"name\": \"Crying Bro\",\n        \"nameURL\": \"crying_bro\"\n    },\n    {\n        \"likes\": [\n            \"192.168.0.1\"\n        ],\n        \"memeImage\": \"data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA\",\n        \"name\": \"Weeping Bro\",\n        \"nameURL\": \"weeping_bro\"\n    }\n]\n"); 

    delete meme_handler;
    delete meme_handler_3;
    delete meme_handler_4;
    delete meme_handler_5;
    delete meme_handler_6;
    boost::filesystem::remove("../Testing/meme/1.json");
    boost::filesystem::remove("../Testing/meme/2.json");
}
TEST_F(RequestHandlerMemeTest, RunHandleGETtime)
{          
    auto meme_map = std::make_shared<std::unordered_map<std::string, Request_Handler_Meme::meme_data>>();
    auto map_locks = std::make_shared<std::unordered_map<std::string, std::unique_lock<std::mutex>>>();
    auto meme_map_lock = std::make_shared<std::shared_mutex>();
    request request_;
    request_.method(boost::beast::http::verb::post);
    request_.version(11);  // HTTP/1.1
    request_.target("/meme/create");
    request_.set(boost::beast::http::field::host, "localhost:8080");
    request_.body() =R"({
                        "name": "Crying Bro",
                        "nameURL": "crying_bro",
                        "memeImage": "data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA"
                        })"; // Set the body with valid JSON content
    request_.prepare_payload();  // Prepare payload
    reply response_;
    path_uri url(request_.target().to_string());
    Request_Handler_Meme* meme_handler = new Request_Handler_Meme(data_path, location, url, map_locks, meme_map, meme_map_lock);
    meme_handler->handle_request(request_, &response_);
    EXPECT_EQ(response_.body(), "{file name: 1.json}\n");

    request request_2;
    request_2.method(boost::beast::http::verb::post);
    request_2.version(11);  // HTTP/1.1
    request_2.target("/meme/create");
    request_2.set(boost::beast::http::field::host, "localhost:8080");
    request_2.body() =R"({
                        "name": "Weeping Bro",
                        "nameURL": "weeping_bro",
                        "memeImage": "data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA"
                        })"; // Set the body with valid JSON content
    request_2.prepare_payload();  // Prepare payload
    reply response_2;
    meme_handler->handle_request(request_2, &response_2);
    EXPECT_EQ(response_2.body(), "{file name: 2.json}\n");

    request request_6;
    request_6.method(boost::beast::http::verb::get);
    request_6.version(11);  // HTTP/1.1
    request_6.target("/meme/list/time");
    request_6.set(boost::beast::http::field::host, "localhost:8080");
    request_6.body() ="192.168.0.1"; // Set the body with valid JSON content
    request_6.prepare_payload();  // Prepare payload
    reply response_6;
    path_uri url_6(request_6.target().to_string());
    Request_Handler_Meme* meme_handler_6 = new Request_Handler_Meme(data_path, location, url_6, map_locks, meme_map, meme_map_lock);
    meme_handler_6->handle_request(request_6, &response_6);

    EXPECT_EQ(response_6.body(), "[\n    {\n        \"likes\": [],\n        \"memeImage\": \"data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA\",\n        \"name\": \"Weeping Bro\",\n        \"nameURL\": \"weeping_bro\"\n    },\n    {\n        \"likes\": [],\n        \"memeImage\": \"data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA\",\n        \"name\": \"Crying Bro\",\n        \"nameURL\": \"crying_bro\"\n    }\n]\n"); 

    delete meme_handler;
    delete meme_handler_6;
    boost::filesystem::remove("../Testing/meme/1.json");
    boost::filesystem::remove("../Testing/meme/2.json");
}
TEST_F(RequestHandlerMemeTest, RunHandleGETlistdefault)
{          
    auto meme_map = std::make_shared<std::unordered_map<std::string, Request_Handler_Meme::meme_data>>();
    auto map_locks = std::make_shared<std::unordered_map<std::string, std::unique_lock<std::mutex>>>();
    auto meme_map_lock = std::make_shared<std::shared_mutex>();
    request request_;
    request_.method(boost::beast::http::verb::post);
    request_.version(11);  // HTTP/1.1
    request_.target("/meme/create");
    request_.set(boost::beast::http::field::host, "localhost:8080");
    request_.body() =R"({
                        "name": "Crying Bro",
                        "nameURL": "crying_bro",
                        "memeImage": "data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA"
                        })"; // Set the body with valid JSON content
    request_.prepare_payload();  // Prepare payload
    reply response_;
    path_uri url(request_.target().to_string());
    Request_Handler_Meme* meme_handler = new Request_Handler_Meme(data_path, location, url, map_locks, meme_map, meme_map_lock);
    meme_handler->handle_request(request_, &response_);
    EXPECT_EQ(response_.body(), "{file name: 1.json}\n");

    request request_2;
    request_2.method(boost::beast::http::verb::post);
    request_2.version(11);  // HTTP/1.1
    request_2.target("/meme/create");
    request_2.set(boost::beast::http::field::host, "localhost:8080");
    request_2.body() =R"({
                        "name": "Weeping Bro",
                        "nameURL": "weeping_bro",
                        "memeImage": "data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA"
                        })"; // Set the body with valid JSON content
    request_2.prepare_payload();  // Prepare payload
    reply response_2;
    meme_handler->handle_request(request_2, &response_2);
    EXPECT_EQ(response_2.body(), "{file name: 2.json}\n");

    request request_6;
    request_6.method(boost::beast::http::verb::get);
    request_6.version(11);  // HTTP/1.1
    request_6.target("/meme/list/time");
    request_6.set(boost::beast::http::field::host, "localhost:8080");
    request_6.body() ="192.168.0.1"; // Set the body with valid JSON content
    request_6.prepare_payload();  // Prepare payload
    reply response_6;
    path_uri url_6(request_6.target().to_string());
    Request_Handler_Meme* meme_handler_6 = new Request_Handler_Meme(data_path, location, url_6, map_locks, meme_map, meme_map_lock);
    meme_handler_6->handle_request(request_6, &response_6);

    EXPECT_EQ(response_6.body(), "[\n    {\n        \"likes\": [],\n        \"memeImage\": \"data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA\",\n        \"name\": \"Weeping Bro\",\n        \"nameURL\": \"weeping_bro\"\n    },\n    {\n        \"likes\": [],\n        \"memeImage\": \"data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA\",\n        \"name\": \"Crying Bro\",\n        \"nameURL\": \"crying_bro\"\n    }\n]\n"); 

    delete meme_handler;
    delete meme_handler_6;
    boost::filesystem::remove("../Testing/meme/1.json");
    boost::filesystem::remove("../Testing/meme/2.json");
}
TEST_F(RequestHandlerMemeTest, RunHandleGETlistFailure)
{          
    auto meme_map = std::make_shared<std::unordered_map<std::string, Request_Handler_Meme::meme_data>>();
    auto map_locks = std::make_shared<std::unordered_map<std::string, std::unique_lock<std::mutex>>>();
    auto meme_map_lock = std::make_shared<std::shared_mutex>();
    request request_;
    request_.method(boost::beast::http::verb::post);
    request_.version(11);  // HTTP/1.1
    request_.target("/meme/create");
    request_.set(boost::beast::http::field::host, "localhost:8080");
    request_.body() =R"({
                        "name": "Crying Bro",
                        "nameURL": "crying_bro",
                        "memeImage": "data:image/jpeg;base64,FOLLOWING_IMAGE_STRING_DATA"
                        })"; // Set the body with valid JSON content
    request_.prepare_payload();  // Prepare payload
    reply response_;
    path_uri url(request_.target().to_string());
    Request_Handler_Meme* meme_handler = new Request_Handler_Meme(data_path, location, url, map_locks, meme_map, meme_map_lock);
    meme_handler->handle_request(request_, &response_);
    EXPECT_EQ(response_.body(), "{file name: 1.json}\n");

    request request_6;
    request_6.method(boost::beast::http::verb::get);
    request_6.version(11);  // HTTP/1.1
    request_6.target("/meme/list/crying_bro");
    request_6.set(boost::beast::http::field::host, "localhost:8080");
    request_6.body() ="192.168.0.1"; // Set the body with valid JSON content
    request_6.prepare_payload();  // Prepare payload
    reply response_6;
    path_uri url_6(request_6.target().to_string());
    Request_Handler_Meme* meme_handler_6 = new Request_Handler_Meme(data_path, location, url_6, map_locks, meme_map, meme_map_lock);
    meme_handler_6->handle_request(request_6, &response_6);

    EXPECT_EQ(response_6.body(), "Could not resolve name of meme.\n"); 

    delete meme_handler;
    delete meme_handler_6;
    boost::filesystem::remove("../Testing/meme/1.json");
}