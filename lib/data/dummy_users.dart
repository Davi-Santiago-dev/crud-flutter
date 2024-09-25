import '../models/user.dart';

/*
  Os mapas são coleções de dados organizados em um formato chave-valor.
  Cada elemento inserido em um mapa no Dart possui uma chave a ele relacionado.
  Os mapas são estruturas muito úteis quando precisamos relacionar cada elemento com um identificador único.
  Sendo assim, veremos neste artigo os principais métodos para manipulação de mapas no Dart.
*/

Map DUMMY_USERS = {
  '1': const User(
      id: '1',
      name: 'Caio Ribeiro',
      idade: '16',
      avatarUrl:
          'https://pps.whatsapp.net/v/t61.24694-24/442426275_1245421880150319_4810596545467750065_n.jpg?ccb=11-4&oh=01_Q5AaIDgjrcfobtNFOIOtn9NHAhCdicQVLjGSgoOrl7sDIjbh&oe=67005624&_nc_sid=5e03e0&_nc_cat=108',
          posicao:'',
          ),
  '2': const User(
      id: '2',
      name: 'Samuka',
      idade: '30',
      avatarUrl:
          'https://media-gru2-1.cdn.whatsapp.net/v/t61.24694-24/457510049_1052491346510955_5725431988675467748_n.jpg?ccb=11-4&oh=01_Q5AaINzAvsZEpa3O7lMYGxUhb6m75HP1V-hdqZ2uE46xN1dl&oe=670059E4&_nc_sid=5e03e0&_nc_cat=111',
          posicao:'',
          ),
  '3': const User(
      id: '3',
      name: 'Gabigol',
      idade: '15',
      avatarUrl:
          'https://media-gru2-1.cdn.whatsapp.net/v/t61.24694-24/456119870_825444273137299_1600300765148953203_n.jpg?ccb=11-4&oh=01_Q5AaIB-Rj8g2CIau3TfE5g8a9TqFhaPc66yn7ACqLVJHM-me&oe=6700459B&_nc_sid=5e03e0&_nc_cat=109',
          posicao:'',
          ),
  '4': const User(
      id: '4',
      name: 'Cauanzinho jackson',
      idade: '20',
      avatarUrl:
          'https://media-gru2-1.cdn.whatsapp.net/v/t61.24694-24/455670343_1021110089810151_8770076434713846749_n.jpg?ccb=11-4&oh=01_Q5AaIDZUDzwH-lTashfOJPSFocItyXH5iIc3iwBl7T9rEEAi&oe=6700516E&_nc_sid=5e03e0&_nc_cat=106',
          posicao:'',
          ),
  '5': const User(
      id: '5',
      name: 'Treinador Diogão',
      idade: '17',
      avatarUrl:
          'https://media-gru2-1.cdn.whatsapp.net/v/t61.24694-24/400991334_856511973237987_1937517228868288715_n.jpg?ccb=11-4&oh=01_Q5AaIEafKTY5VmCw-QIIin2Ye0799A5eTzMLy8tCMVbrcjrQ&oe=670074CB&_nc_sid=5e03e0&_nc_cat=102',
          posicao:'', 
          ),
};
