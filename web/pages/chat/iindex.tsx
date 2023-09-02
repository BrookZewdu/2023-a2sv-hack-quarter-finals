import ChatCard from "@/component/chatbot/ChatCard";
import ChatInput from "@/component/chatbot/ChatInput";
import Image from "next/image"
export default function  Chat(){
    return (
      <div className="">
        <div className="flex flex-wrap justify-center h-2/4">
          <Image src={"/landing.svg"} alt={""} width={1200} height='' />
        </div>
        <div className="flex flex-wrap bg-white justify-center h-1/4">
          <div className="bg-gray-200 w-1/4 p-4 rounded-lg font-poppins m-6">
            <ChatCard />
          </div>

          <div className="bg-gray-200 w-1/4 p-4 rounded-lg font-poppins m-6">
            <ChatCard />
          </div>
          <div className="bg-gray-200 w-1/4 p-4 rounded-lg font-poppins m-6">
            <ChatCard />
          </div>
        </div>

        <div className="w-full flex justify-center">
          <ChatInput  />
        </div>
      </div>
    );
}