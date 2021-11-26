import 'package:flutter/material.dart';
import 'package:instax/common/models/instax_camera.dart';
import 'package:instax/presentation/provider/instax_list_provider.dart';
import 'package:instax/presentation/widgets/card_instax.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Container(
            margin: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.all(Radius.circular(40))
            ),
            child: Icon(
              Icons.menu, 
              color: Colors.white,
              size: 20
            ),
          ),
          actions: [
            Container(
              padding:EdgeInsets.all(10) ,
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(40))
              ),
              child: Icon(Icons.shopping_bag_outlined, size: 20, color: Colors.white,),
            ),
          ],
          centerTitle: true,
          shape: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.7,
            ),
          ),
          title: Image.asset("assets/img/fujifilm-banner.png", height: 20,)
        ),
        body: Consumer<InstaxListProvider>(
        builder: (context, provider, __) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 18, top: 18),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                    child: TextFormField(
                      controller: provider.searchController,
                      onChanged: provider.doSearch,
                      onEditingComplete: () {
                        FocusScope.of(context).unfocus();
                      },
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16.0),
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        ),
                        hintText: 'Search',
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Colors.blueAccent)
                        ),
                      ),
                    )
                  ),
                  ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: provider.isSearching ? provider.searchCameraResult.length : provider.cameraList.length,
                    itemBuilder: (context, index) {
                      List<InstaxCamera> data = provider.isSearching ? provider.searchCameraResult : provider.cameraList;
                      return InstaxCard(
                        cameraData: data[index],
                      );
                    }
                  )
                ],
              )
            );
          }
        ),
      ),
    );
  }
}
