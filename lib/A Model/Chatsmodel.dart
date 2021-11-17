class Chatsmodel {

  String name;
  String icon;
  bool isgroup;
  String time;
  String status;
  String currentMessage;
  bool select = false;

  Chatsmodel(
    {
      this.name,
      this.icon,
      this.isgroup,
      this.time,
      this.status,
      this.currentMessage,
      this.select=false,
    });
  
}