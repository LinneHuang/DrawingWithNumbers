ArrayList<String> studentIds;

void setup() {
  studentIds = new ArrayList<String>();
  studentIds.add("student 1");
  studentIds.add("student 2");
  studentIds.add("student 3");
  studentIds.add("student 4");
  studentIds.add("student 5");
  studentIds.add("student 6");
  studentIds.add("student 7");
  studentIds.add("student 8");
  studentIds.add("student 9");
  studentIds.add("student 10");
  studentIds.add("student 11");
  studentIds.add("student 12");
  studentIds.add("student 13");
  
  int numStudents = studentIds.size();
  
  for (int i = 0; i < numStudents; i++) {
    int randNum = (int) random(studentIds.size());
    String studentId = studentIds.get(randNum);
    println(studentId);
    studentIds.remove(studentId);
  }

}