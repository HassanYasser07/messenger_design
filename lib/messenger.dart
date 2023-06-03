import 'package:flutter/material.dart';
class Screen  extends StatelessWidget
{
  const Screen({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://play-lh.googleusercontent.com/CWzqShf8hi-AhV9dUjzsqk2URzdIv8Vk2LmxBzf-Hc8T-oGkLVXe6pMpcXv36ofpvtc'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                  color: Colors.grey[300],
                ),
                padding: const EdgeInsets.all(
                  5.0,
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 110.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 15,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20.0,
                ),
                itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
  // 1. build item
  // 2. build list
  // 3. add item to list
  // arrow function
  Widget buildChatItem() =>
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://play-lh.googleusercontent.com/CWzqShf8hi-AhV9dUjzsqk2URzdIv8Vk2LmxBzf-Hc8T-oGkLVXe6pMpcXv36ofpvtc'),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0,
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hassan yasser ahmed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children:
                  [
                    const Expanded(
                      child: Text(
                        style:TextStyle(
                            color: Colors.white
                        ),
                        'hello my name is Hassan yasser hello my name is Hassan yasser',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Text(
                      style:TextStyle(
                          color: Colors.white
                      ),
                      '02:00 pm',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget buildStoryItem() =>
      SizedBox(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://play-lh.googleusercontent.com/CWzqShf8hi-AhV9dUjzsqk2URzdIv8Vk2LmxBzf-Hc8T-oGkLVXe6pMpcXv36ofpvtc'),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: 3.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6.0,
            ),
            const Text(
              style:TextStyle(
                  color: Colors.white
              ),
              'Hassan Yasser Ahmed Hassan',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}