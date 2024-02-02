import 'package:flutter/material.dart';
import 'package:profile_app/data/dummy_data.dart';

import '../models/profile_model.dart';
import '../models/trabajo_model.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  DummyData dummyData = DummyData();

  Future<ProfileModel> getProfile() async {
    return Future.delayed(
      Duration(seconds: 5),
      () {
        return ProfileModel(
          foto:
              'https://covalto-production-website.s3.amazonaws.com/Hero_Mobile_Cuenta_Personas_V1_1_8046e424ea.webp',
          name: 'Elliot Thompon',
          folowers: 980,
          likes: 23,
          rating: 8.9,
          profesion: 'Desarrollador Móvil',
          sobreMi:
              'Hi, my name is Saheb Singh. I am a A Software Engineer, a tech writer and I love to share whatever I learn.'
              'Following my passion and aim to create a place for others to learn with quality content, '
              'I started my youtube channel and a website for the same.',
          trabajosList: [
            TrabajoModel(
                posicion: 'Desarrollador Junior',
                empresa: 'B&S Consultores',
                imageUrl:
                    'https://media.licdn.com/dms/image/C560BAQFhieNGCceb7w/company-logo_200_200/0/1631335067903?e=2147483647&v=beta&t=d-HDKbEOzCQMW7oLfxow124l6Gp4c6Cc1ODl0gLWvAg'),
            TrabajoModel(
                posicion: 'Desarrollador Senior',
                empresa: 'Tata Group',
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Tata_logo.svg/1200px-Tata_logo.svg.png'),
            TrabajoModel(
                posicion: 'Java Developer',
                empresa: 'La Fábrica',
                imageUrl:
                    'https://lafabricadesoftware.es/wp-content/uploads/2017/04/La-Fabrica-de-Software-Logotipo-cuadrado.png')
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    double screnWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: screenHeigth,
                width: screnWidth,
                color: Colors.grey.shade200,
                alignment: Alignment.topCenter,
                child: FutureBuilder(
                  future: getProfile(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      print(snapshot.data);
                      ProfileModel data = snapshot.data;
                      return SafeArea(
                        child: Scaffold(
                          body: Stack(
                            children: [
                              Container(
                                height: screenHeigth,
                                width: screnWidth,
                                color: Colors.grey.shade200,
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 150,
                                  width: screnWidth - 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xff808FAC),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(25),
                                      bottomRight: Radius.circular(25),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        padding: EdgeInsets.all(16),
                                        margin: EdgeInsets.only(top: 40),
                                        width: screnWidth - 80,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              offset: Offset(0, 4),
                                              blurRadius: 12,
                                            )
                                          ],
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: Image.network(
                                                    data.foto,
                                                    width: screnWidth / 5,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        data.name,
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        data.profesion,
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black38),
                                                      ),
                                                      SizedBox(
                                                        height: 16,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              Text(
                                                                'Likes',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black38,
                                                                ),
                                                              ),
                                                              Text(
                                                                data.likes
                                                                    .toString(),
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text('Followers'),
                                                              Text(data.folowers
                                                                  .toString()),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text('Rating'),
                                                              Text(data.rating
                                                                  .toString()),
                                                            ],
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              width: 2,
                                                              color: Colors
                                                                  .black26),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text('Chat'),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Expanded(
                                                  child: GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10),
                                                      decoration: BoxDecoration(
                                                          color: Colors.blue,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        'Follow',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Text('Notable works'),
                                    Text(
                                        'Basado en la experiencia profesional'),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Container(
                                      height: 180,
                                      width: double.infinity,
                                      child: ListView.builder(
                                        itemCount: data.trabajosList.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0.0,
                                                horizontal: 18.0),
                                            child: (Container(
                                              height: 60.0,
                                              width: 200.0,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    child: Image.network(
                                                      data.trabajosList[index]
                                                          .imageUrl,
                                                      width: screnWidth / 2.6,
                                                      height: 110,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(data.trabajosList[index]
                                                      .posicion),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(data.trabajosList[index]
                                                      .empresa),
                                                ],
                                              ),
                                            )),
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Container(
                                      width: screnWidth - 50,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 16, vertical: 8),
                                            padding:
                                                EdgeInsetsDirectional.all(8),
                                            child: Text('Sobre mi'),
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16, vertical: 8),
                                            child: Text(
                                              data.sobreMi,
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
