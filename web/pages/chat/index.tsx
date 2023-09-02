import React, { useState, useEffect } from "react";
import Image from "next/image";
// import { chat_logo } from "@/public";
import { FC } from "react";
import ChatCard from "@/component/chatbot/ChatCard";
import Chat from "@/component/chat/Chat";
import ChatInput from "@/component/chatbot/ChatInput";

const Index: FC = () => {
  return (
    <div className=" relative bg-white ">
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
                  <ChatCard />
                </div>
                <div className="w-1/4 bg-gray-200 rounded-lg m-8 p-6 mb-0 pb-1">
                  <ChatCard />
                </div>
                <div className="w-1/4 bg-gray-200 rounded-lg m-8 p-6 mb-0 pb-1">
                  <ChatCard />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <Chat />
    </div>
  );
};

export default Index;
