import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reeroute_vendor/Bookings/booking_details_screen.dart';

class InterestedBooking extends StatefulWidget {
  const InterestedBooking({super.key});

  @override
  State<InterestedBooking> createState() => _InterestedBookingState();
}

class _InterestedBookingState extends State<InterestedBooking> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        shadowColor: Colors.black54,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: SvgPicture.asset('assets/chevron_left.svg'),
            )),
        // elevation: 1,
        title: Text(
          "Interested Bookings",
          style: TextStyle(
            fontFamily: 'krub',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.475,
            color: Color(0xff2a4f6d),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: SvgPicture.asset('assets/filter.svg'),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 35),
                    child: Row(
                      children: [
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: Color(0xff0acf83),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Text(
                          "Mumbai",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff2a4f6d),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 33),
                    child: Row(
                      children: [
                        Container(
                          height: 42,
                          width: 2,
                          color: Color(0x1a2a4f6d),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 40),
                    child: Row(
                      children: [
                        Container(
                          height: 8,
                          width: 8,
                          color: Color(0xffea1414),
                        ),
                        const SizedBox(width: 14),
                        Text(
                          "Delhi",
                          style: TextStyle(
                            fontFamily: 'rubik',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff2a4f6d),
                          ),
                        ),
                        const SizedBox(
                          width: 118,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookingDetails()),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "View Details",
                                style: TextStyle(
                                  fontFamily: 'rubik',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff2a4f6d),
                                ),
                              ),
                              SvgPicture.asset('assets/chevron_right.svg'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 22),
                    child: Divider(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home.png',
              height: 24,
              width: 24,
            ),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/booking.png',
              height: 24,
              width: 24,
            ),
            label: 'Bookings',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/profile.png',
              height: 24,
              width: 24,
            ),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
