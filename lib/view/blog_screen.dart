import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_test_sheet/model/fake_data.dart';
import 'package:my_test_sheet/colors.dart';
import 'package:my_test_sheet/my_strings.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({
    super.key,
    required this.sizeW,
    required this.sizeH,
    required this.textTheme,
  });

  final double sizeW;
  final double sizeH;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              //poster
              Container(
                width: sizeW / 1.1,
                height: sizeH / 4.2,
                decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(16)), image: DecorationImage(image: AssetImage(posterFakeData["imageAsset"]), fit: BoxFit.cover)),
                foregroundDecoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16)), gradient: LinearGradient(colors: gradientColors.posterCoverGradient, begin: Alignment.topCenter, end: Alignment.bottomCenter)),
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
                    const SizedBox(
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
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
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
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), gradient: const LinearGradient(colors: gradientColors.tags)),
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
                const ImageIcon(
                  AssetImage("assets/icons/penicon.png"),
                  color: myColors.splashBg,
                  size: 20,
                ),
                const SizedBox(
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
                              foregroundDecoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16)), gradient: LinearGradient(colors: gradientColors.blogs, begin: Alignment.topCenter, end: Alignment.bottomCenter)),
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
                                  const Icon(
                                    Icons.thumb_up_alt_outlined,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                  const SizedBox(
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
                              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
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
                const ImageIcon(
                  AssetImage("assets/icons/microicon.png"),
                  color: myColors.splashBg,
                  size: 20,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  myStrings.newPodcasts,
                  style: textTheme.headline3,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: sizeH / 10),
            child: SizedBox(
                height: sizeW / 2.5,
                child: ListView.builder(
                    itemCount: podcastList.length,
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
                                foregroundDecoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16)), gradient: LinearGradient(colors: gradientColors.blogs, begin: Alignment.topCenter, end: Alignment.bottomCenter)),
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
                                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      );
                    })),
          ),
        ],
      ),
    );
  }
}
