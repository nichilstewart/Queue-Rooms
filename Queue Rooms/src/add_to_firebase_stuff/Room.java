package add_to_firebase_stuff;

import java.util.ArrayList;
import java.util.UUID;

import usc.edu.eq.FirebaseQuery;
import usc.edu.eq.User;

import java.util.List;

public class Room {

	public List<String> mainQueue;
	public String roomname;
	public String location;
	public String description;
	public List<String> users;
	public List<String> owner;
	public String id;
	public List<String> messageBoard;
	
	
	public Room() {
		mainQueue = new ArrayList<String>();
		users = new ArrayList<String>();
		owner = new ArrayList<String>();
		messageBoard = new ArrayList<String>();
	}
	
	
	//CREATES ROOM AND PUBLISHES IT TO DATABASE 	 
	public Room(String newOwner, String theroomname, String thedescription, String thelocation) {
		owner = new ArrayList<String>();
		owner.add(newOwner);
		roomname = theroomname;
		location = thelocation;
		description = thedescription;
		mainQueue = new ArrayList<String>();
		users = new ArrayList<String>();
		id = UUID.randomUUID().toString();
		
		FirebaseQuery.updateRoom(this);
	}
	
	public static Room findRoomID(String id) {
		return FirebaseQuery.queryRoomID(id);
	}
	
	//FINDS ALL ROOMS CORRESPONDING TO A PERSON
	public static List<Room> findRooms(String userid) {
		return FirebaseQuery.queryRooms(userid);
	}
	
	public void addMessage(String message) {
		messageBoard.add(message);
		FirebaseQuery.updateRoom(this);
	}
	
	public void removeMessage(int message) {
		messageBoard.remove(message);
		FirebaseQuery.updateRoom(this);
	}
	
	public List<String> findUsernames(){
		List<String> output = new ArrayList<String>();
		for(int i = 0; i < users.size(); i++) {
			output.add(FirebaseQuery.queryUserID(users.get(i)).getUsername());
		}
		return output;
	}
	
	//FINDS THE CURRENT SIZE OF THE QUEUE
	public int queueSize() {
		return mainQueue.size();
	}
	
	//FINDS PLACE OF INDIVIDUAL IN QUEUE BASED ON USERID -1 MEANS YOU AREN'T IN QUEUE
	public int findPlaceInQueue(String userid) {
		for(int i = 0; i < mainQueue.size(); i++) {
			if(mainQueue.get(i) == userid) {
				return i;
			}
		}
		return -1;
	}
	
	//ADDS A USER TO THE ROOM AND UPDATES DATABASE
	public void addUser(String newUser) {
		if(!users.contains(newUser)) users.add(newUser);
		FirebaseQuery.updateRoom(this);
	}
	
	public void removeUser(String userid) {
		users.remove(userid);
		FirebaseQuery.updateRoom(this);
	}
	
	public void deleteRoom() {
		FirebaseQuery.deleteRoom(this);
	}
	
	//ADDS MULTIPLE USERS TO ROOM AND UPDATES DATABASE
	public void addUser(List<String> newUser) {
		for(int i = 0; i < newUser.size(); i++) {
			users.add(newUser.get(i));
		}
		FirebaseQuery.updateRoom(this);
	}
	
	//ADDS OWNER TO ROOM AND UPDATES DATABASE
	public void addOwner(String newOwner) {
		owner.add(newOwner);
		FirebaseQuery.updateRoom(this);
	}
	
	//ADDS MULTIPLE OWNERS TO ROOM AND UPDATES DATABASE
	public void addOwner(List<String> newOwner) {
		for(int i = 0; i < newOwner.size(); i++) {
			users.add(newOwner.get(i));
		}
		FirebaseQuery.updateRoom(this);
	}
	
	//ADDS A USER TO THE QUEUE, UPDATES DATABASE
	public void addQueue(String newUser) {
		mainQueue.add(newUser);
		FirebaseQuery.updateRoom(this);
	}
	
	public static void addQueue(String newUser, String roomid) {
		Room find = FirebaseQuery.queryRoomID(roomid);
		find.mainQueue.add(newUser);
		FirebaseQuery.updateRoom(find);
	}
	
	//POPS QUEUE
	public User popQueue() {
		if(!mainQueue.isEmpty()) {
			String output = mainQueue.remove(0);
			FirebaseQuery.updateRoom(this);
			return FirebaseQuery.queryUserID(output);
		}
		return null;
	}
	

	public List<String> getUsers() {
		return users;
	}

	public List<String> getMainQueue() {
		return mainQueue;
	}

	public void setUsers(List<String> users) {
		this.users = users;
	}

	public List<String> getOwner() {
		return owner;
	}

	public void setOwner(List<String> owner) {
		this.owner = owner;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String getRoomname() {
		return roomname;
	}

	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
	public static void main(String[] args) {
		Room.findRooms("test1");
	}


	public List<String> getMessageBoard() {
		return messageBoard;
	}


	public void setMessageBoard(List<String> messageBoard) {
		this.messageBoard = messageBoard;
	}


	public void setMainQueue(List<String> mainQueue) {
		this.mainQueue = mainQueue;
	}
	
}
