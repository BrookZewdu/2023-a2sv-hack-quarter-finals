import React, { useState, useEffect } from "react";
import Image from "next/image";
// import { chat_logo } from "@/public";
import { FC } from "react";
import ChatCard from "@/component/chatbot/ChatCard";
import Chat from "@/component/chat/Chat";
import ChatInput from "@/component/chatbot/ChatInput";
import { useGetMessagesQuery } from "@/store/features/chat/message-history-api";
interface message {
  role: string;
  content: string;
}
const Index: FC = () => {
  const message = {
    userMessage: "How do I get my ID from the kebele?",
    chatHistory: [
      {
        role: "assistant",
        content:
          "You are very experienced assistant that gives out really concise steps on the proceeding of Ethiopian kebele institustions. The lowest level of local government with limited autonomy there are the kebeles. They are at the neighbourhood level and are the primary contact for most citizens living in Ethiopia. Their administrative unit consists of an elected council, a cabinet (executive committee), a social court and the development and security staff. Kebeles are accountable to their woreda councils and are typically responsible for providing basic education, primary health care, agriculture, water, and rural roads. The kebeles are headed by cadres loyal to the political coalition who see the people's everyday lives. Therefore, they are also excellent for observing movements undesirable for the central government.",
      },
    ],
  };
  const { data: messages, isLoading, isError } = useGetMessagesQuery(message);
  

  return (
    <div className="relative bg-white">
      <div className="">
        <div className="flex flex-col mb-16 ">
          <div className="flex-grow">
            <div className="flex flex-col gap-2 ">
              <div className="flex  flex-col items-center  gap-2 max-sm:flex-col  justify-center pt-8 mb-6">
                {/* <Image
                  src={"/favicon.ico"}
                  width={100}
                  height={100}
                /> */}
                <p className="text-5xl font-bold text-center font-inter text-primary">
                  Welcome to AfriData<span className="text-black">Nexus</span>
                  <span className="text-5xl">AI</span>
                </p>
                <p className="text-xl text-center font-bold font-inter">
                  Your AI-powered copilot for your services
                </p>
              </div>
              <div className="flex flex-wrap justify-center">
                <Image src={"/landing.svg"} alt={""} width={400} height={200} />
              </div>
              <div className="flex flex-wrap justify-center">
                <div className="w-1/4 bg-gray-200 rounded-lg m-8 mb-0 p-6 pb-1">
                  <ChatCard content={""} />
                </div>
                <div className="w-1/4 bg-gray-200 rounded-lg m-8 p-6 mb-0 pb-1">
                  <ChatCard content={""} />
                </div>
                <div className="w-1/4 bg-gray-200 rounded-lg m-8 p-6 mb-0 pb-1">
                  <ChatCard content={""} />
                </div>
              </div>
            </div>
          </div>
        </div>

        <div>
          {messages.chatHistory.map((message: message) => (
            // <div key={message.role}>
            //   <ChatCard content={message.content} />
            // </div>
            <div>{message.content}</div>
          ))}
        </div>
      </div>
      <Chat />
    </div>
  );
};

export default Index;
