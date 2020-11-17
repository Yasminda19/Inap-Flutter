import 'package:flutter/material.dart';
import 'package:inap/utils/styles.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

// import 'package:inap/views/partials/chip.dart';

class HalamanUtamaPage extends StatefulWidget {
  @override
  _HalamanUtamaPageState createState() => _HalamanUtamaPageState();
}

class _HalamanUtamaPageState extends State<HalamanUtamaPage> {
  static const TextStyle heroStyle = TextStyle(
    color: Colors.white,
    fontSize: 38,
  );
  static const TextStyle heroBoldStyle = TextStyle(
    color: Colors.white,
    fontSize: 38,
    fontWeight: FontWeight.w900,
  );
  static const TextStyle normalStyle = TextStyle(
    color: Colors.white,
    fontSize: 14,
  );
  static const TextStyle boldStyle = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  String getName() {
    return "Venti";
  }

  String getToday() {
    var date = new DateTime.now();
    return DateFormat("EEEE, d MMMM y").format(date);
  }

  String getBangun() {
    // var hour = api.getUserDataBangun();
    // return DateFormat("HH:mm").format(hour);
    return "04:40";
  }

  String getTidur() {
    // var hour = api.getUserDataTidur();
    // return DateFormat("HH:mm").format(hour);
    return "20:30";
  }

  String getImprovement() {
    // var score = api.blah
    // return format("???")
    return "40%";
  }

  String getScore() {
    // return api.getUserScore().toString()
    return "85";
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(children: [
            Text("Selamat Tidur ", style: heroStyle),
            Text(getName(), style: heroBoldStyle),
          ]),
          Chip(
            backgroundColor: Styles.accentPurple,
            label: Text("🎯 : Kulit Lebih Glowing", style: boldStyle),
          ),
          SizedBox(height: 24),
          Text("Stat Tidur Terakhirmu 🌙", style: boldStyle),
          Card(
            color: Styles.appSecondaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  Text(getToday(), style: normalStyle),
                  SizedBox(height: 10),
                  Text("8hr 10m", style: heroBoldStyle),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(children: [
                        Icon(Icons.circle, color: Styles.accentGreen, size: 8),
                        Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("Tidur", style: normalStyle)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(getTidur(),
                              style: TextStyle(color: Styles.accentGreen)),
                        ),
                      ]),
                      Row(children: [
                        Icon(Icons.circle, color: Styles.accentCyan, size: 8),
                        Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("Bangun", style: normalStyle)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(getBangun(),
                              style: TextStyle(color: Styles.accentGreen)),
                        )
                      ]),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          Text("Skor Tidurmu 💯", style: boldStyle),
          Card(
            color: Styles.appSecondaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              padding: EdgeInsets.all(24),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(getImprovement(), style: heroBoldStyle),
                    Text("Peningkatan Kualitas Tidur", style: normalStyle),
                    Text(getScore(), style: heroBoldStyle),
                    Text("Skor Tidur", style: normalStyle),
                  ]),
            ),
          ),
          SizedBox(height: 24),
          Text("Gapai Goalsmu 🎯", style: boldStyle),
          Card(
            color: Styles.accentPurple,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Wajah Lebih Glowing 💄", style: boldStyle),
                  new LinearPercentIndicator(
                    width: 180.0,
                    lineHeight: 12.0,
                    // percent: getProgress() / 100.0,
                    percent: 0.6,
                    backgroundColor: Colors.white,
                    progressColor: Styles.accentGreen,
                    // center: Text('$getProgress()%'),
                    center: Text("60%", style: normalStyle),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) => Card(
                child: Center(child: Text('Dummy Card Text')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
