import 'package:flutter/material.dart';

class Aiinfo {
  final int position;
  final String name;
  final String iconimage;
  final String description;
  final String link;

  Aiinfo(
    this.position, {
    required this.name,
    required this.iconimage,
    required this.description,
    required this.link,
  });
}

List<Aiinfo> aidata = [
  Aiinfo(
    1,
    name: "Chatgpt AI",
    iconimage: 'lib/icons/chatgpt.jpg',
    description:
        "ChatGPT (Chat Generative Pre-trained Transformer) is a chatbot launched by OpenAI in November 2022. It is built on top of OpenAI's GPT-3 family of large language models and is fine-tuned (an approach to transfer learning) with both supervised and reinforcement learning techniques. ChatGPT. Developer(s)",
    link: "https://chat.openai.com/auth/login",
  ),
  Aiinfo(
    2,
    name: "ChatSonic AI",
    iconimage: 'lib/icons/chatsonic.jpg',
    description:
        'Chatsonic AI is an AI-powered chatbot platform from Writesonic that enables organizations to utilize AI’s power to personalize client experiences and raise customer engagement, like OpenAI’s ChatGPT.',
    link: "https://writesonic.com/chat",
  ),
  Aiinfo(
    3,
    name: 'Character AI',
    iconimage: 'lib/icons/characterai.jpg',
    description:
        'Character.ai (stylized as Character.AI, also known as Character AI) is a neural language model chatbot web application that can generate human-like text responses and participate in the contextual conversation',
    link: "https://beta.character.ai/",
  ),
  Aiinfo(
    4,
    name: 'Cedille AI',
    iconimage: 'lib/icons/cedille.jpg',
    description:
        'Your writing assistant for writing, summarizing and paraphrasing texts.',
    link: "https://cedille.ai/",
  ),
  Aiinfo(
    5,
    name: 'Bloom AI',
    iconimage: 'lib/icons/BloomAI-Fevicon.png',
    description:
        'THE DATA DELIVERY PLATFORM. Bloom ONE is a modern web-scale business intelligence platform for business teams to be more insights-driven every day',
    link: "https://bloomai.co/",
  ),
  Aiinfo(
    6,
    name: "Alpa",
    iconimage: 'lib/icons/alpa.png',
    description:
        'Bloom AI helps clients augment their internal capabilities with our insights-as-a-service API solutions. Clients leverage our subscription-based solutions in NLP.',
    link: "https://opt.alpa.ai/",
  ),
];
