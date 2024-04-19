import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_test_sheet/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_test_sheet/model/fake_data.dart';
import 'package:my_test_sheet/my_strings.dart';

class blog extends StatefulWidget {
  @override
  State<blog> createState() => _blog();
}

class _blog extends State<blog> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;

    var textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        backgroundColor: myColors.mainpageColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: myColors.iconColors,
                      size: sizeH / 20,
                    ),
                    Image(
                      image: AssetImage('assets/image/logo_top.png'),
                      height: sizeH / 14,
                    ),
                    Icon(
                      Icons.search,
                      color: myColors.iconColors,
                      size: sizeH / 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  //poster
                  Container(
                    width: sizeW / 1.1,
                    height: sizeH / 4.2,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16)), image: DecorationImage(image: AssetImage(posterFakeData["imageAsset"]), fit: BoxFit.cover)),
                    foregroundDecoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16)), gradient: LinearGradient(colors: gradientColors.posterCoverGradient, begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          posterFakeData["title"],
                          style: textTheme.headline1,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(posterFakeData["writer"] + " - " + posterFakeData["date"], style: textTheme.headline2),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(posterFakeData["likes"], style: textTheme.headline1),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  FontAwesomeIcons.thumbsUp,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //tags
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemCount: tagModel.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), gradient: LinearGradient(colors: gradientColors.tags)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "# " + tagModel[index].title,
                              style: textTheme.headline2,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              //Last Articles
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage("assets/icons/penicon.png"),
                      color: myColors.splashBg,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      myStrings.newArticles,
                      style: textTheme.headline3,
                    )
                  ],
                ),
              ),
              SizedBox(
                  height: sizeW / 2.5,
                  child: ListView.builder(
                      itemCount: blogModel.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: index == 0 ? sizeW / 20 : 5, left: index == (blogModel.length - 1) ? sizeW / 20 : 5),
                          child: Column(
                            children: [
                              Stack(children: [
                                Container(
                                  height: sizeW / 3.5,
                                  width: sizeW / 3.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            blogModel[index].imageUrl,
                                          ),
                                          fit: BoxFit.cover)),
                                  foregroundDecoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16)), gradient: LinearGradient(colors: gradientColors.blogs, begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                                ),
                                Positioned(
                                    right: 8,
                                    bottom: 10,
                                    child: Text(
                                      blogModel[index].writerName,
                                      style: textTheme.headline2,
                                    )),
                                Positioned(
                                  left: 8,
                                  bottom: 10,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.thumb_up_alt_outlined,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        blogModel[index].views,
                                        style: textTheme.headline2,
                                      )
                                    ],
                                  ),
                                )
                              ]),
                              Container(
                                width: sizeW / 3.5,
                                child: Text(
                                  blogModel[index].title,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                        );
                      })),

              // Lasat Podcasts
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage("assets/icons/microicon.png"),
                      color: myColors.splashBg,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      myStrings.newPodcasts,
                      style: textTheme.headline3,
                    )
                  ],
                ),
              ),
              SizedBox(
                  height: sizeW / 2.5,
                  child: ListView.builder(
                      itemCount: blogModel.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: index == 0 ? sizeW / 20 : 5, left: index == (blogModel.length - 1) ? sizeW / 20 : 5),
                          child: Column(
                            children: [
                              Stack(children: [
                                Container(
                                  height: sizeW / 3.5,
                                  width: sizeW / 3.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            podcastList[index].image,
                                          ),
                                          fit: BoxFit.cover)),
                                  foregroundDecoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(16)), gradient: const LinearGradient(colors: gradientColors.blogs, begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                                ),
                                Positioned(
                                    right: 8,
                                    bottom: 10,
                                    child: Text(
                                      podcastList[index].writer,
                                      style: textTheme.headline2,
                                    )),
                                Positioned(
                                  left: 8,
                                  bottom: 10,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.thumb_up_alt_outlined,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        podcastList[index].view,
                                        style: textTheme.headline2,
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: sizeW / 20,
                                  left: sizeW / 16,
                                  child: Icon(
                                    Icons.play_circle_outline,
                                    color: const Color.fromARGB(98, 255, 255, 255),
                                    size: sizeW / 6,
                                  ),
                                )
                              ]),
                              Container(
                                width: sizeW / 3.5,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  podcastList[index].title,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
