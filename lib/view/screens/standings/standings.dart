import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sa_sport/core/constant/appColors.dart';
import 'package:sa_sport/view/widget/home/custom_logo_club.dart';
import 'package:sa_sport/view/widget/home/custom_menu_icon.dart';
import 'package:sa_sport/view/widget/home/custom_titel_home.dart';
import 'package:sa_sport/view/widget/standings/custom_name_clube.dart';

class StandingsScreen extends StatefulWidget {
  const StandingsScreen({super.key});

  @override
  State<StandingsScreen> createState() => _StandingsScreenState();
}

class _StandingsScreenState extends State<StandingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor10,
        body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconApparHome(
                      ontap: () {},
                      imagepath: "assets/images/menu-bar.png",
                    ),
                    const CustomTitelHome(titel: "Standings"),
                    CustomIconApparHome(
                      ontap: () {},
                      imagepath: "assets/images/search.png",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(
                              "La Liga",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: AppColors.whiteColor,
                                      fontSize: 23),
                            ),
                            subtitle: Text(
                              "Spain",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: AppColors.gry3, fontSize: 17),
                            ),
                            leading: SizedBox(
                                height: 30,
                                width: 35,
                                child: Image.asset("assets/images/spain.jpg")),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.whiteColor,
                                  size: 25,
                                )),
                            isThreeLine: true,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 2),
                            height: 280,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.blackColor3),
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: DataTable(
                                  horizontalMargin: 5,
                                  columnSpacing: 15,
                                  columns: [
                                    DataColumn(
                                      label: Text(
                                        "Team",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: AppColors.whiteColor4),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Text(
                                          "D",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        "L",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: AppColors.whiteColor4),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        "Ga",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: AppColors.whiteColor4),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        "Gd",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: AppColors.whiteColor4),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        "Pts",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: AppColors.whiteColor4),
                                      ),
                                    ),
                                  ],
                                  rows: [
                                    DataRow(cells: [
                                      DataCell(
                                        Row(
                                          children: const [
                                            CustomLogoClub(
                                              logoClub:
                                                  "assets/images/barcelona.png",
                                              sizeIcon: 18,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            CustomNameClube(
                                              nameClube: "Barcelona",
                                            )
                                          ],
                                        ),
                                      ),
                                      DataCell(
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30),
                                          child: Text(
                                            "10",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                    color:
                                                        AppColors.whiteColor4),
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "55",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "7",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "33",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "66",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      )
                                    ]),
                                    DataRow(cells: [
                                      DataCell(
                                        Row(
                                          children: const [
                                            CustomLogoClub(
                                              logoClub:
                                                  "assets/images/barcelona.png",
                                              sizeIcon: 18,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            CustomNameClube(
                                              nameClube: "Barcelona",
                                            )
                                          ],
                                        ),
                                      ),
                                      DataCell(
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30),
                                          child: Text(
                                            "10",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                    color:
                                                        AppColors.whiteColor4),
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "55",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "7",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "33",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "66",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      )
                                    ]),
                                    DataRow(cells: [
                                      DataCell(
                                        Row(
                                          children: const [
                                            CustomLogoClub(
                                              logoClub:
                                                  "assets/images/barcelona.png",
                                              sizeIcon: 18,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            CustomNameClube(
                                              nameClube: "Barcelona",
                                            )
                                          ],
                                        ),
                                      ),
                                      DataCell(
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30),
                                          child: Text(
                                            "10",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                    color:
                                                        AppColors.whiteColor4),
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "55",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "7",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "33",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "66",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      )
                                    ]),
                                    DataRow(cells: [
                                      DataCell(
                                        Row(
                                          children: const [
                                            CustomLogoClub(
                                              logoClub:
                                                  "assets/images/barcelona.png",
                                              sizeIcon: 18,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            CustomNameClube(
                                              nameClube: "Barcelona",
                                            )
                                          ],
                                        ),
                                      ),
                                      DataCell(
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30),
                                          child: Text(
                                            "10",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                    color:
                                                        AppColors.whiteColor4),
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "55",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "7",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "33",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          "66",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: AppColors.whiteColor4),
                                        ),
                                      )
                                    ])
                                  ]),
                            ),

                            // child: Table(
                            //   border: TableBorder.all(
                            //       color: AppColors.whiteColor),
                            //   children: [
                            //     TableRow(children: [
                            //       Column(
                            //         children: [
                            //           Row(
                            //             mainAxisAlignment:
                            //                 MainAxisAlignment.spaceBetween,
                            //             children: [
                            //               Text("team"),
                            //               Row(
                            //                 children: [
                            //                   Padding(
                            //                     padding: const EdgeInsets
                            //                         .symmetric(horizontal: 5),
                            //                     child: CustomNameClube(
                            //                         nameClube: "D"),
                            //                   ),
                            //                   Padding(
                            //                     padding: const EdgeInsets
                            //                         .symmetric(horizontal: 5),
                            //                     child: CustomNameClube(
                            //                         nameClube: "D"),
                            //                   ),
                            //                   Padding(
                            //                     padding: const EdgeInsets
                            //                         .symmetric(horizontal: 5),
                            //                     child: CustomNameClube(
                            //                         nameClube: "Ga"),
                            //                   ),
                            //                   Padding(
                            //                     padding: const EdgeInsets
                            //                         .symmetric(horizontal: 5),
                            //                     child: CustomNameClube(
                            //                         nameClube: "Gd"),
                            //                   ),
                            //                   Padding(
                            //                     padding: const EdgeInsets
                            //                         .symmetric(horizontal: 5),
                            //                     child: CustomNameClube(
                            //                         nameClube: "Pts"),
                            //                   ),
                            //                 ],
                            //               )
                            //             ],
                            //           ),
                            // Row(
                            //   mainAxisAlignment:
                            //       MainAxisAlignment.spaceBetween,
                            //   children: [
                            //     Row(
                            //       children: const [
                            //         CustomLogoClub(
                            //           logoClub:
                            //               "assets/images/barcelona.png",
                            //           sizeIcon: 18,
                            //         ),
                            //         SizedBox(
                            //           width: 12,
                            //         ),
                            //         CustomNameClube(
                            //           nameClube: "Barcelona",
                            //         )
                            //       ],
                            //     ),
                            //               Row(
                            //                 children: [
                            //                   Padding(
                            //                     padding: const EdgeInsets
                            //                         .symmetric(horizontal: 5),
                            //                     child: CustomNameClube(
                            //                         nameClube: "25"),
                            //                   ),
                            //                   Padding(
                            //                     padding: const EdgeInsets
                            //                         .symmetric(horizontal: 5),
                            //                     child: CustomNameClube(
                            //                         nameClube: "1"),
                            //                   ),
                            //                   Padding(
                            //                     padding: const EdgeInsets
                            //                         .symmetric(horizontal: 5),
                            //                     child: CustomNameClube(
                            //                         nameClube: "12"),
                            //                   ),
                            //                   Padding(
                            //                     padding: const EdgeInsets
                            //                         .symmetric(horizontal: 5),
                            //                     child: CustomNameClube(
                            //                         nameClube: "34"),
                            //                   ),
                            //                   Padding(
                            //                     padding: const EdgeInsets
                            //                         .symmetric(horizontal: 5),
                            //                     child: CustomNameClube(
                            //                         nameClube: "4"),
                            //                   ),
                            //                 ],
                            //               )
                            //             ],
                            //           ),
                            //           Text("team"),
                            //           Text("team"),
                            //         ],
                            //       )
                            //     ]),
                            //   ],
                            // )
                            // child: Table(
                            //   border:
                            //       TableBorder.all(color: AppColors.whiteColor),
                            //   defaultVerticalAlignment:
                            //       TableCellVerticalAlignment.middle,
                            //   children: [
                            //     TableRow(children: [
                            //       TableCell(
                            //         // verticalAlignment:
                            //         //     TableCellVerticalAlignment.middle,
                            //         child: Text(
                            //           "Team",
                            //           style: Theme.of(context)
                            //               .textTheme
                            //               .bodyMedium!
                            //               .copyWith(
                            //                   color: AppColors.whiteColor4),
                            //         ),
                            //       ),
                            //       const TableCell(
                            //         // verticalAlignment:
                            //         //     TableCellVerticalAlignment.middle,
                            //         child: CustomNameClube(nameClube: "D"),
                            //       ),
                            //       const TableCell(
                            //         // verticalAlignment:
                            //         //     TableCellVerticalAlignment.middle,
                            //         child: CustomNameClube(nameClube: "L"),
                            //       ),
                            //       const TableCell(
                            //         // verticalAlignment:
                            //         //     TableCellVerticalAlignment.middle,
                            //         child: CustomNameClube(nameClube: "Ga"),
                            //       ),
                            //       const TableCell(
                            //         // verticalAlignment:
                            //         //     TableCellVerticalAlignment.middle,
                            //         child: CustomNameClube(nameClube: "Gd"),
                            //       ),
                            //       const TableCell(
                            //         // verticalAlignment:
                            //         //     TableCellVerticalAlignment.middle,
                            //         child: CustomNameClube(nameClube: "Pts"),
                            //       )
                            //     ]),
                            //     ...List.generate(
                            //         4,
                            //         (index) => TableRow(children: [
                            //               TableCell(
                            //                 // verticalAlignment:
                            //                 //     TableCellVerticalAlignment
                            //                 //         .middle,
                            //                 child: Row(
                            //                   children: const [
                            //                     CustomLogoClub(
                            //                       logoClub:
                            //                           "assets/images/barcelona.png",
                            //                       sizeIcon: 10,
                            //                     ),
                            //                     SizedBox(
                            //                       width: 8,
                            //                     ),
                            //                     CustomNameClube(
                            //                       nameClube: "Bar",
                            //                     )
                            //                   ],
                            //                 ),
                            //               ),
                            //               const TableCell(
                            //                 // verticalAlignment:
                            //                 //     TableCellVerticalAlignment
                            //                 //         .middle,
                            //                 child:
                            //                     CustomNameClube(nameClube: "D"),
                            //               ),
                            //               const TableCell(
                            //                 // verticalAlignment:
                            //                 //     TableCellVerticalAlignment
                            //                 //         .middle,
                            //                 child:
                            //                     CustomNameClube(nameClube: "L"),
                            //               ),
                            //               const TableCell(
                            //                 // verticalAlignment:
                            //                 //     TableCellVerticalAlignment
                            //                 //         .middle,
                            //                 child: CustomNameClube(
                            //                     nameClube: "Ga"),
                            //               ),
                            //               const TableCell(
                            //                 // verticalAlignment:
                            //                 //     TableCellVerticalAlignment
                            //                 //         .middle,
                            //                 child: CustomNameClube(
                            //                     nameClube: "Gd"),
                            //               ),
                            //               const TableCell(
                            //                 // verticalAlignment:
                            //                 //     TableCellVerticalAlignment
                            //                 //         .middle,
                            //                 child: CustomNameClube(
                            //                     nameClube: "Pts"),
                            //               )
                            //             ]))
                            //   ],
                            // ),
                            // child: Column(
                            //   children: [
                            //     Row(
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceBetween,
                            //       children: [
                            // Text(
                            //   "Team",
                            //   style: Theme.of(context)
                            //       .textTheme
                            //       .bodyMedium!
                            //       .copyWith(
                            //           color: AppColors.whiteColor4),
                            // ),
                            // Row(
                            //   children: [
                            // Padding(
                            //   padding: const EdgeInsets.symmetric(
                            //       horizontal: 5),
                            //   child: Column(
                            //     children: const [
                            //       CustomNameClube(nameClube: "D"),
                            //     ],
                            //   ),
                            // ),
                            //     const Padding(
                            //       padding: EdgeInsets.symmetric(
                            //           horizontal: 5),
                            //       child:
                            //           CustomNameClube(nameClube: "L"),
                            //     ),
                            //     const Padding(
                            //       padding: EdgeInsets.symmetric(
                            //           horizontal: 5),
                            //       child:
                            //           CustomNameClube(nameClube: "Ga"),
                            //     ),
                            //     const Padding(
                            //       padding: EdgeInsets.symmetric(
                            //           horizontal: 5),
                            //       child:
                            //           CustomNameClube(nameClube: "Gd"),
                            //     ),
                            //     const Padding(
                            //       padding: EdgeInsets.only(left: 5),
                            //       child:
                            //           CustomNameClube(nameClube: "Pts"),
                            //     ),
                            //   ],
                            // )

                            //     // ignore: prefer_const_constructors
                            //   ],
                            // ),
                            //     const SizedBox(
                            //       height: 14,
                            //     ),
                            // Row(
                            //   children: const [
                            //     CustomLogoClub(
                            //       logoClub: "assets/images/barcelona.png",
                            //       sizeIcon: 18,
                            //     ),
                            //     SizedBox(
                            //       width: 12,
                            //     ),
                            //     CustomNameClube(
                            //       nameClube: "Barcelona",
                            //     )
                            //   ],
                            // ),
                            //     Padding(
                            //       padding:
                            //           const EdgeInsets.symmetric(vertical: 10),
                            //       child: Row(
                            //         children: const [
                            //           CustomLogoClub(
                            //             logoClub: "assets/images/barcelona.png",
                            //             sizeIcon: 18,
                            //           ),
                            //           SizedBox(
                            //             width: 12,
                            //           ),
                            //           CustomNameClube(
                            //             nameClube: "Atleteco Madrid",
                            //           )
                            //         ],
                            //       ),
                            //     ),
                            //     Padding(
                            //       padding:
                            //           const EdgeInsets.symmetric(vertical: 10),
                            //       child: Row(
                            //         children: const [
                            //           CustomLogoClub(
                            //             logoClub: "assets/images/barcelona.png",
                            //             sizeIcon: 18,
                            //           ),
                            //           SizedBox(
                            //             width: 12,
                            //           ),
                            //           CustomNameClube(
                            //             nameClube: "Villa Real",
                            //           )
                            //         ],
                            //       ),
                            //     ),
                            //     Padding(
                            //       padding:
                            //           const EdgeInsets.symmetric(vertical: 10),
                            //       child: Row(
                            //         children: const [
                            //           CustomLogoClub(
                            //             logoClub: "assets/images/real.png",
                            //             sizeIcon: 18,
                            //           ),
                            //           SizedBox(
                            //             width: 12,
                            //           ),
                            //           CustomNameClube(
                            //             nameClube: "Real Madrid",
                            //           )
                            //         ],
                            //       ),
                            //     )
                            //   ],
                            // ),
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
