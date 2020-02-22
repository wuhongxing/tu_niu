import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imageurls = [
    'http://pages.ctrip.com/commerce/promote/20180718/yxzy/img/640sygd.jpg',
    'https://dimg04.c-ctrip.com/images/700u0r000000gxvb93E54_810_235_85.jpg',
    'https://dimg04.c-ctrip.com/images/700u0r000000gxvb93E54_810_235_85.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 200,
                      child: Swiper(
                        itemCount: _imageurls.length,
                        pagination: SwiperPagination(),
                        itemBuilder: (context, index) {
                          return Image.network(
                            _imageurls[index],
                            fit: BoxFit.fill,
                          );
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Icon(Icons.card_giftcard),
                                  Text('机票'),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.card_giftcard),
                                  Text('机票'),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.card_giftcard),
                                  Text('机票'),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.card_giftcard),
                                  Text('机票'),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.card_giftcard),
                                  Text('机票'),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text('打包订 更便宜 ~ 享受成套餐打包价'),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),),
                              ),
                              Row(
                                children: <Widget>[
                                  Text('机票/火车票+酒店'),
                                  Text('门票+酒店'),
                                  Text('定制游')
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text('跟团游'),
                                  Text('自由行'),
                                  Text('邮轮游')
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text('私家团'),
                                  Text('签证'),
                                  Text('企业购')
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text('牛人专线'),
                                  Text('高品质跟团游'),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text('分期~借钱'),
                                  Text('分期~免期'),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
