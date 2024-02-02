import '../models/profile_model.dart';
import '../models/trabajo_model.dart';

class DummyData {
  List<ProfileModel> myProfile = [
    ProfileModel(
        foto: 'https://covalto-production-website.s3.amazonaws.com/Hero_Mobile_Cuenta_Personas_V1_1_8046e424ea.webp',
        name: 'Elliot Thompon',
        folowers: 980,
        likes: 23,
        rating: 8.9,
        profesion: 'Desarrollador Móvil',
        sobreMi: 'Desarrollador Flutter',
        trabajosList: [TrabajoModel(posicion: 'Desarrollador Junior', empresa: 'B&S Consultores', imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fm.facebook.com%2Fprofile.php%3Fid%3D100067691765400%26locale%3Dhi_IN&psig=AOvVaw1ZOceUV5VfPMFtELgE4k8r&ust=1706909802913000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOCAvteMi4QDFQAAAAAdAAAAABAH')],
    ),
  ];
}
