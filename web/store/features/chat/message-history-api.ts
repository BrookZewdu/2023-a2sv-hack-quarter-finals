import { createApi, fetchBaseQuery } from "@reduxjs/toolkit/query/react";

const baseUrl = "https://0c71-213-55-95-236.ngrok-free.app/api";

export const messageApi = createApi({
  reducerPath: "messageApi",
  baseQuery: fetchBaseQuery({ baseUrl }),
  endpoints: (builder) => ({
    getMessages: builder.query({
      query: (params) => {
        const { userMessage, chatHistory } = params;
        let url = "/chatbot/chat";


        const body = params;

        return {
          url: url,
          method: "POST",
          body,
        };
      },
    }),
  }),
});

export const { useGetMessagesQuery} = messageApi;







  