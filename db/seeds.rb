User.destroy_all
Message.destroy_all
ChatRoom.destroy_all



sam = User.create(name: "Sam", language: "Spanish")
taimur = User.create(name: "Taimur", language: "English")

codeChat = ChatRoom.create(subject: "code")
foodChat = ChatRoom.create(subject: "food")

message1 = Message.create(text: "this code challange is really hard", user: taimur, chat_room: codeChat)
message2 = Message.create(text: "that code challenge was really easy", user: sam, chat_room: codeChat )
message3 = Message.create(text: "I'm hungry, lets to go Kopitiam", user: sam, chat_room: foodChat )
message4 = Message.create(text: "Dude, I'm fasting today", user: taimur, chat_room: foodChat )
message5 = Message.create(text: "But tomorrow, let's get dumplings", user: taimur, chat_room: foodChat )
