package com.bdqn.pms.web.po;

import java.io.Serializable;
import java.sql.Timestamp;

public class BldProperty implements Serializable{

	private static final long serialVersionUID = -3756815519058708926L;
	private Integer id;					//楼盘维护id
	private Integer type;				//楼宇类型（0多层，1高层）
	private Integer lift;				//是否使用电梯（0否，1是）
	private Integer shydropower;		//是否二次水电（0否，1是）
	private Integer floors;				//清扫层数
	private Integer washfloors;			//拖洗层数
	private Integer cesspool;			//单元门
	private Integer streetlight;		//路灯数量
	private Double sungreenbelt;		//夏季不提纯绿地（m2）
	private Double sgreenbelt;			//夏季提纯绿地（m2）
	private Double artificlake;			//人工水面（m2）
	private Double hardground;			//硬化地面（m2）
	private Integer mirror;				//整容镜
	private Integer louver;				//百叶窗
	private Integer elevatorcar;		//电梯桥箱
	private Integer elevatordoor;		//电梯门
	private Integer eletricwelldoor;	//电井门
	private Integer welldoor;			//水井门
	private Integer firehydrant;		//消防栓
	private Integer accessdoor;			//通道门
	private Integer celldoor;			//单元门
	private Double corridorarea;		//走廊通道地面（m2）
	private Builder builder;						//楼宇
	private Residence residence;					//住宅或房产
	private Timestamp addDate;			//添加时间
	private String rsdcId;				//住宅或房产
	private String bldId;				//楼宇
	
	public BldProperty(){
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getLift() {
		return lift;
	}

	public void setLift(Integer lift) {
		this.lift = lift;
	}

	public Integer getShydropower() {
		return shydropower;
	}

	public void setShydropower(Integer shydropower) {
		this.shydropower = shydropower;
	}

	public Integer getFloors() {
		return floors;
	}

	public void setFloors(Integer floors) {
		this.floors = floors;
	}

	public Integer getWashfloors() {
		return washfloors;
	}

	public void setWashfloors(Integer washfloors) {
		this.washfloors = washfloors;
	}

	public Integer getCesspool() {
		return cesspool;
	}

	public void setCesspool(Integer cesspool) {
		this.cesspool = cesspool;
	}

	public Integer getStreetlight() {
		return streetlight;
	}

	public void setStreetlight(Integer streetlight) {
		this.streetlight = streetlight;
	}

	public Double getSungreenbelt() {
		return sungreenbelt;
	}

	public void setSungreenbelt(Double sungreenbelt) {
		this.sungreenbelt = sungreenbelt;
	}

	public Double getSgreenbelt() {
		return sgreenbelt;
	}

	public void setSgreenbelt(Double sgreenbelt) {
		this.sgreenbelt = sgreenbelt;
	}

	public Double getArtificlake() {
		return artificlake;
	}

	public void setArtificlake(Double artificlake) {
		this.artificlake = artificlake;
	}

	public Double getHardground() {
		return hardground;
	}

	public void setHardground(Double hardground) {
		this.hardground = hardground;
	}

	public Integer getMirror() {
		return mirror;
	}

	public void setMirror(Integer mirror) {
		this.mirror = mirror;
	}

	public Integer getLouver() {
		return louver;
	}

	public void setLouver(Integer louver) {
		this.louver = louver;
	}

	public Integer getElevatorcar() {
		return elevatorcar;
	}

	public void setElevatorcar(Integer elevatorcar) {
		this.elevatorcar = elevatorcar;
	}

	public Integer getElevatordoor() {
		return elevatordoor;
	}

	public void setElevatordoor(Integer elevatordoor) {
		this.elevatordoor = elevatordoor;
	}

	public Integer getEletricwelldoor() {
		return eletricwelldoor;
	}

	public void setEletricwelldoor(Integer eletricwelldoor) {
		this.eletricwelldoor = eletricwelldoor;
	}

	public Integer getWelldoor() {
		return welldoor;
	}

	public void setWelldoor(Integer welldoor) {
		this.welldoor = welldoor;
	}

	public Integer getFirehydrant() {
		return firehydrant;
	}

	public void setFirehydrant(Integer firehydrant) {
		this.firehydrant = firehydrant;
	}

	public Integer getAccessdoor() {
		return accessdoor;
	}

	public void setAccessdoor(Integer accessdoor) {
		this.accessdoor = accessdoor;
	}

	public Integer getCelldoor() {
		return celldoor;
	}

	public void setCelldoor(Integer celldoor) {
		this.celldoor = celldoor;
	}

	public Double getCorridorarea() {
		return corridorarea;
	}

	public void setCorridorarea(Double corridorarea) {
		this.corridorarea = corridorarea;
	}

	public Builder getBuilder() {
		return builder;
	}

	public void setBuilder(Builder builder) {
		this.builder = builder;
	}

	public Residence getResidence() {
		return residence;
	}

	public void setResidence(Residence residence) {
		this.residence = residence;
	}

	public Timestamp getAddDate() {
		return addDate;
	}

	public void setAddDate(Timestamp addDate) {
		this.addDate = addDate;
	}

	public String getRsdcId() {
		return rsdcId;
	}

	public void setRsdcId(String rsdcId) {
		this.rsdcId = rsdcId;
	}

	public String getBldId() {
		return bldId;
	}

	public void setBldId(String bldId) {
		this.bldId = bldId;
	}

}
