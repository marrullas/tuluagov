abstract class INewsRepository {
  Future getPost();
  Future<String> getFeaturedImage(String url);
  
}