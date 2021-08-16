# Bloc clean architecture ❤️
Projek ini adalah gambaran kecil penggunaan flutter dengan menggunakan state manjemen Bloc https://pub.dev/packages/flutter_bloc, konsep aristektur bersih (clean architecture) serta depedency injection dengan injectable https://pub.dev/packages/injectable

### Aristektur flow : 

![Clean architecture](https://i0.wp.com/resocoder.com/wp-content/uploads/2019/08/Clean-Architecture-Flutter-Diagram.png?w=556&ssl=1)

### Struktur folder clean architecture
```
├── lib
│   ├── features
│   │   └── fitur1
│   │       │── data
│   │       │   ├─ model
│   │       │   ├─ repos
│   │       │── domain
│   │       │   ├─ entities
│   │       │   ├─ repos
│   │       │   ├─ use_case
│   │       │── presentation
│   │       │   ├─ bloc
│   │       │   ├─ pages
│   │       │   ├─ widget
│   │     
```

## Depedecy injection

untuk membuat depedency injection

1. tambahkan anotasi `@LazySingleton(as: YourRepoContract)` pada class repository implemenstasi
   
```dart
 @LazySingleton(as: YourRepoContract)
 class YourRepoContractImpl implements YourRepo {
   // fungsi turunan dari class YourRepo
 }
```

2. tambahkan anotasi `@lazySingleton` pada class use case 

```dart
 @lazySingleton
 class GetDataFromServer {
  final YourRepoContractImpl yourRepoContractImpl;

  GetDataFromServer(this.yourRepoContractImpl);

 }
```

3. tambahkan anotasi `@injectable` pada class bloc

```dart
 @injectable
 class YourBloc extends Bloc<YourEvent, YourState> {
  final GetDataFromServer getDataFromServer;

  YourBloc(this.getDataFromServer) : super(YourInitial());
 
 }
```

4. daftar kan class Bloc dengan `getIt`

```dart
 BlocProvider(
  create: (_) => getIt<NewsBloc>(),
 ),
```

5. [Jalankan Build Runner ](#menjalankan-build-runner)

## Menjalankan Build Runner

untuk membuat depedency injection, sealed class, dll

```bash
   flutter pub run build_runner build --delete-conflicting-outputs
```
jika ingin menjalankan nya terus : 

```bash
   flutter pub run build_runner watch --delete-conflicting-outputs
```

