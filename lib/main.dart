import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    List myDatalist = [
      {
        "name": "amal",
        "dp":
            "https://images.pexels.com/photos/26051915/pexels-photo-26051915/free-photo-of-small-boy-running-along-the-riverside-promenade.jpeg?auto=compress&cs=tinysrgb&w=600",
        "bg":
            "https://images.pexels.com/photos/25824310/pexels-photo-25824310/free-photo-of-boys-sitting-on-wall.jpeg?auto=compress&cs=tinysrgb&w=600",
      },
      {
        "name": "sarah",
        "dp":
            "https://images.pexels.com/photos/3054161/pexels-photo-3054161.jpeg?auto=compress&cs=tinysrgb&w=600",
        "bg":
            "https://images.pexels.com/photos/26245614/pexels-photo-26245614/free-photo-of-cup-of-coffee.jpeg?auto=compress&cs=tinysrgb&w=600",
      },
      {
        "name": "john",
        "dp":
            "https://images.pexels.com/photos/1806644/pexels-photo-1806644/free-photo-of-man-wearing-white-shirt.jpeg?auto=compress&cs=tinysrgb&w=600",
        "bg":
            "https://images.pexels.com/photos/2676144/pexels-photo-2676144/free-photo-of-man-in-black-jacket-posing-in-front-of-gray-wall.jpeg?auto=compress&cs=tinysrgb&w=600",
      },
      {
        "name": "emma",
        "dp":
            "https://images.pexels.com/photos/3454927/pexels-photo-3454927/free-photo-of-woman-in-white-dress-posing-on-dock.jpeg?auto=compress&cs=tinysrgb&w=600",
        "bg":
            "https://images.pexels.com/photos/3408745/pexels-photo-3408745/free-photo-of-woman-wearing-black-tank-top.jpeg?auto=compress&cs=tinysrgb&w=600",
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: PageView.builder(
            itemCount: myDatalist.length,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 13),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(myDatalist[index]["bg"]),
                ),
              ),
              child: Column(
                children: [
                  Divider(
                    color: Colors.white,
                    thickness: 3,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myDatalist[index]["dp"]),
                    ),
                    title: Text(
                      myDatalist[index]["name"],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    subtitle: Text(
                      "Just Now",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 20, vertical: 10),
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: Text(
                            "Send message",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 40,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
