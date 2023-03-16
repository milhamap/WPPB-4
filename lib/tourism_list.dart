import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management/list_item.dart';
import 'package:state_management/detail_screen.dart';
import 'package:state_management/models/tourism_place.dart';

class TourismList extends StatefulWidget {
  final List<TourismPlace> doneTourismPlaceList;

  const TourismList({
    Key? key,
    required this.doneTourismPlaceList
  }) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState(doneTourismPlaceList);
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> doneTourismPlaceList;
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: 'Balai Jagong Kudus',
        description: 'Taman Balai Jagong termasuk salah satu destinasi multifungsi yang ada di kompleks GOR wergu wetan. Tempatnya yang Asri dan mempunyai penataan yang rapi membuat tempat ini sangat nyaman untuk sekadar berkumpul dengan keluarga juga dengan teman-teman, tempat ini juga dilengkapi dengan fasilitas olahraga, diantaanya skatepark, wall climb, area buat jogging dan juga ada mushola. Pada pagi banyak warga yang melakukan jogging atau sekadar jalan santai sambil menikmati udara segar pagi hari, dan tak lupa dengan kebutuhan stamina setelah olahraga di tempat ini juga terdapat PKL yang tertata rapi di seberang jalan GOR. Biasanya PKL disini kalau pagi berjualan masakan khas kudus yaitu Lentog Tanjung, bila sudah memasuki waktu maghrib di sepanjang jalan Taman Wergu Wetan anda akan menjumpai banyak sekali PKL yang membuka angkringan disini.',
        location: 'Wergu Wetan Kudus, Belakang Gor Kudus',
        imageMain: 'assets/images/balai_jagong.jpg',
        open: 'Open Everyday',
        time: '06.00 - 22.00',
        tiket: 'Free',
        imageAsset: [
          'assets/images/balai_jagong_1.jpg',
          'assets/images/balai_jagong_2.jpg',
          'assets/images/balai_jagong_3.jpg'
        ]
    ),
    TourismPlace(
        name: 'Taman Oasis Kudus',
        description: 'Taman Oasis menjadi tempat nongkring yang meski Anda singgahi. Tempat ini menjadi tempat favorit hangout anak anak muda dan keluarga di Kudus. Taman Oasis merupakan taman milik PT. Djarum yang menjadi sajian selamat datang bagi karyawan atau tamu yang akan masuk ke dalam area pabrik rokok itu. Namun masyarakat umum diperbolehkan untuk masuk area taman.',
        location: 'Jl. Lkr. Utara No.7, Bacin, Kec. Bae',
        imageMain: 'assets/images/oasis.jpg',
        open: 'Open Everyday',
        time: 'Everytime',
        tiket: 'Free',
        imageAsset: [
          'assets/images/oasis_1.jpg',
          'assets/images/oasis_2.jpg',
          'assets/images/oasis_3.jpg'
        ]
    ),
    TourismPlace(
        name: 'Taman Sardi Kudus',
        description: 'Tempat ini sangat familiar bagi warga setempat, karena disini kita bisa menikmati keindahan dari pemandangan alam Gunung Muria. Meski disiang hari, tetap saja udara disini terasa adem dan anginnya semilir bertiup-tiup, mungkin dikarenakan banyaknya pohon berdaun lebat sehingga suasananya terasa teduh dan sejuk. Taman Sardi Kudus biasa dijadikan tempat untuk acara kegiatan camping, outbond dan kegiatan outdoor lainnya. Disediakan pula gazebo yang jumlahnya lumayan sehingga kalian bisa pakai untuk makan maupun istirahat.',
        location: 'Watulumpang, Kajar, Kec. Dawe',
        imageMain: 'assets/images/sardi.jpg',
        open: 'Open Everyday',
        time: 'Everytime',
        tiket: 'Rp. 10.000',
        imageAsset: [
          'assets/images/sardi_1.jpg',
          'assets/images/sardi_2.jpg',
          'assets/images/sardi_3.JPG'
        ]
    ),
    TourismPlace(
        name: 'Selam Semliro',
        description: 'Tak kalah keren dengan yang lainnya, Selam Semliro berada di kawasan desa rahtawu, disini banyak sekali spot foto instagramable dengan latar belakang pemandangan pegunungan yang ciamik.',
        location: 'Semliro, Rahtawu, Kec. Gebog',
        imageMain: 'assets/images/selam_semliro.jpg',
        open: 'Open Everyday',
        time: 'Everytime',
        tiket: 'Free',
        imageAsset: [
          'assets/images/selam_semliro_1.jpg',
          'assets/images/selam_semliro_2.jpg',
          'assets/images/selam_semliro_3.jpg'
        ]
    ),
    TourismPlace(
        name: 'River Tubing Jurang',
        description: 'Tidak hanya itu, di Kudus juga ada wisata yang berbau adrenalin. Aliran air di Kali Gelis yang deras di Desa Jurang, Kudus ini menjadi salah satu atraksi wisata seru yang selalu ramai peminat. Pemandangan yang bisa dinikmati selama river tubing ini pun tak main-main. Mulai dari hamparan sawah menghijau sebelum menuju lokasi, sungai berarus santai dikelilingi tebing batu yang keren.',
        location: 'Sungging RT. 01, RW.06, Jurang, Kec. Gebog',
        imageMain: 'assets/images/river.jpg',
        open: 'Open Everyday',
        time: '09.00 - 16.00',
        tiket: 'Rp. 50.000',
        imageAsset: [
          'assets/images/river_1.jpg',
          'assets/images/river_2.jpg',
          'assets/images/river_3.jpg'
        ]
    ),
    TourismPlace(
        name: 'Waduk Logung',
        description: 'Waduk Logung menjadi tempat dimana para wisatawan akan dimanjakan dengan alam yang indah. Rasakan kesegaran alam dengan suasana mendamaikan jiwa raga bersama keluarga ketika menghabiskan hari libur di Kabupaten Kudus. Banyak spot dan wahana menarik di obyek wisata Waduk Logung yang siap memanjakan para pengunjung. Kabupaten Kudus juga menyuguhkan pesona alam yang tak bisa dianggap remeh dengan keindahannya, salah satunya yaitu telaga indahnya. Bendungan Logung Kudus menyuguhkan bukit pandang dengan panorama alam luar biasa.',
        location: 'Area Sawah, Kandangmas, Kec. Dawe',
        imageMain: 'assets/images/logung.jpg',
        open: 'Open Everyday',
        time: 'Everytime',
        tiket: 'Free',
        imageAsset: [
          'assets/images/logung_1.jpg',
          'assets/images/logung_2.jpg',
          'assets/images/logung_3.jpeg'
        ]
    ),
    TourismPlace(
        name: 'Omah Dongkas',
        description: 'Kota Kudus memang dikenal memiliki keindahan lama yang begitu memukau. Seperti yang satu ini, Omah Dongkas menyajikan kuliner ditemani view pegunungan yang hijau dan eksotis.',
        location: 'Jl. Rahtawu Raya, Semliro, Rahtawu, Kec. Gebog',
        imageMain: 'assets/images/dongkas.jpg',
        open: 'Open Everyday',
        time: '06.00 - 08.00',
        tiket: 'Free',
        imageAsset: [
          'assets/images/dongkas_1.jpg',
          'assets/images/dongkas_2.jpg',
          'assets/images/dongkas_3.jpg'
        ]
    ),
    TourismPlace(
        name: 'Dandangan',
        description: 'Dandangan merupakan festival yang diadakan di Kabupaten Kudus, Jawa Tengah, Indonesia, untuk menandai dimulainya ibadah puasa pada bulan Ramadan. Masjid Menara Kudus biasanya menjadi pusat keramaian pada acara ini. Dhandhangan adalah tradisi berkumpulnya para santri di depan Masjid Menara Kudus setiap menjelang Ramadan untuk menunggu pengumuman dari Sunan Kudus tentang penentuan awal puasa. Selanjutnya, kesempatan ini juga dimanfaatkan para pedagang untuk berjualan di sekitar masjid sehingga akhirnya kini dikenal masyarakat sebagai pasar malam yang ada setiap menjelang Ramadhan.',
        location: 'Jl. Sunan Kudus No.87-89, Kudus, Demaan',
        imageMain: 'assets/images/dandangan.jpg',
        open: 'Open Everyday',
        time: '17.00 - 23.00',
        tiket: 'Free',
        imageAsset: [
          'assets/images/dandangan_1.jpg',
          'assets/images/dandangan_2.jpg',
          'assets/images/dandangan_3.jpeg'
        ]
    )
  ];

  _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: ListItem(
            place: place,
            isDone: doneTourismPlaceList.contains(place),
            onCheckboxClick: (bool? value) {
              setState(() {
                if (value != null) {
                  value
                    ? doneTourismPlaceList.add(place)
                    : doneTourismPlaceList.remove(place);
                }
              });
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}