<%--
  Created by IntelliJ IDEA.
  User: dolphin
  Date: 2023/12/25
  Time: 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Interface</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #ff9966, #ff5e62);
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        #chat-container {
            max-width: 800px;
            width: 100%;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            margin: 20px;
        }

        #chat-messages {
            padding: 20px;
            height: calc(100% - 200px);
            overflow-y: scroll;
            border-bottom: 1px solid #ddd;
        }

        .message {
            margin-bottom: 10px;
            padding: 8px;
            border-radius: 8px;
        }
        #chat-title {
            text-align: center;
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
        }

        .user-message {
            background-color: #e6f7ff;
            color: #0056b3;
        }

        .system-message {
            background-color: #f2f2f2;
            color: #666;
        }

        #input-container {
            display: flex;
            padding: 10px;
            background-color: #eee;
            border-top: 1px solid #ddd;
        }

        #message-input {
            flex: 1;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-right: 10px;
            outline: none;
        }

        #send-button {
            padding: 8px 16px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #send-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div id="chat-container">
    <div id="chat-title">智能客服</div>
    <div id="chat-messages"></div>
    <div id="input-container">
        <input type="text" id="message-input" placeholder="Type your message...">
        <button id="send-button"><i class="fas fa-paper-plane"></i> Send</button>
    </div>
</div>

<script>
    $(document).ready(function() {
        $("#send-button").on("click", function() {
            sendMessage();
        });
    });

    function sendMessage() {
        // 获取输入框中的消息
        var message = $("#message-input").val();

        // 创建新的用户消息元素
        var userMessageElement = $("<div>").addClass("message user-message").text("我: " + message);

        // 将用户消息元素添加到聊天区域
        $("#chat-messages").append(userMessageElement);

        // 发送消息到后端
        $.ajax({
            url: "/Booking/AIGCChat",
            method: "POST",
            data: {'question':message},
            success: function(response) {
                console.log(response);
                // 处理后端返回的数据
                var responseData = response;

                // 创建新的系统消息元素
                var systemMessageElement = $("<div>").addClass("message system-message").text("系统: " + responseData);

                // 将系统消息元素添加到聊天区域
                $("#chat-messages").append(systemMessageElement);
            }
        });

        // 清空输入框
        $("#message-input").val("");
    }
</script>

</body>
</html>
