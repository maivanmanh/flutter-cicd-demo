import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVM Flutter CICD Example',
      theme: ThemeData(
        useMaterial3: false
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final students = const [
    'Nguyễn Văn A',
    'Trần Thị Bích Ngọc',
    'Lê Minh Cường',
    'Phạm Thanh Hằng',
    'Hoàng Anh Tuấn',
    'Võ Thị Thu Trang',
    'Đặng Quang Huy',
    'Ngô Thị Kim Oanh',
    'Bùi Văn Nam',
    'Phan Thị Thanh Hà',
    'Nguyễn Hữu Tài',
    'Trịnh Thị Lan',
    'Đỗ Đức Toàn',
    'Huỳnh Ngọc Tú',
    'Lưu Thị Ngọc Diệp',
    'Vũ Mạnh Hùng',
    'Tạ Thị Hương',
    'Nguyễn Ngọc Long',
    'Phạm Thị Yến Nhi',
    'Lê Quốc Khánh',
    'Trần Thị Thúy Vy',
    'Nguyễn Đình Phúc',
    'Đoàn Thị Mai',
    'Nguyễn Văn Khải',
    'Phan Ngọc Bích',
    'Hoàng Thị Tâm',
    'Lý Minh Hoàng',
    'Nguyễn Trúc Linh',
    'Võ Anh Khoa',
    'Trần Thị Thu Hà',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View Example')),
      body: ListView.separated(
        itemCount: students.length,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.grey,
          height: 1,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(
                students[index][0], // first letter
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            title: Text(students[index]),
            subtitle: Text('Student #${index + 1}'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('You selected ${students[index]}')),
              );
            },
          );
        },
      ),
    );
  }
}
