Giới thiệu chung
    - Trong pipeline này thực hiện việc analyze, test, build (android, web) và deploy lên firebase hosting 
    - để chạy được project thì phải cài đặt hai secrets sau trong repo:
        + FIREBASE_SERVICE_ACCOUNT: vào setting của firebase project, chọn mục 'service account' rồi tạo private key là file json, lấy nội dung của nó
        + FIREBASE_PROJECT_ID: vào setting chọn project id
    - khởi tạo firebase hosting:
        + cài đặt firebase cli ở máy dev local
        + chạy lệnh 'firebase init hosting' rồi làm theo hướng dẫn, chọn 'build/web' là thư mục deploy 
        + đảm bảo tập tin .firebaserc được tạo ra ở root project

- single.yml: chứa mọi step trong 1 job duy nhất, thực thi hơi lâu
- multiple.yml: có tách analyze và test ra phrase 1, build độc lập cho web và android trong phrase 2