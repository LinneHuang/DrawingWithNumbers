ArrayList<String> names;

String[] name;

void setup() {
  //name = new String[10];
  names = new ArrayList<String>();
  
  names.add("student 1");
  names.add("student 2");
  names.add("student 3");
  names.add("student 4");
  names.add("student 5");
  names.add("student 6");
  names.add("student 7");
  
//  for (int i = 0; i < names.size(); i++) {
  for (int i = 0; names.size() < 0; i++) {
    int selectedStudent = (int) random(0, names.size());
    println(names.get(selectedStudent));
    names.remove(selectedStudent);
  }

  
  //for (int i = 0; i < names.size(); i++) {
  //  println(names.get(i));
  //}
  

}