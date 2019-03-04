package com.bdqn.pms.web.service.clea;

import com.bdqn.pms.web.po.Plant;

import java.sql.Timestamp;
import java.util.List;

public interface PlantService {
	 public List<Plant> getPlantList(String theColmunName, String theColmunValue, Integer currentPageNo, Integer pageSize)throws Exception;
	    public Long getPlantTotalCount(String theColmunName,String theColmunValue)throws Exception;
	    public int addPlant(String thePlantName,String thePlantType, int thePlantAge, int thePlantQuantity, String thePlantUnit, Timestamp thePlantAddDate,String thePlantNo, Integer thePlantDel, Integer theCompanyId, String thePlantRemark, String thePlantCharacter, String thePlantHabit)throws Exception;
	    public Integer checkIsThePlantUsing(Integer thePlantId)throws Exception;  //检测植物是否正在被使用，如果有返回值则表明该id的植物正在被使用
	    public int deletePlant(int thePlantId)throws Exception;
	    public int checkIsThePlantNoRepeat(String thePlantNo)throws Exception;  //检测植物编号是否已经有
	    public int checkIsThePlantNoOfTheSpecifedPlantNoRepeat(Integer thePlantId,String thePlantNo)throws Exception;  //检测修改植物信息时其编号是否有其他人使用
	    public int updatePlant(String thePlantName,String thePlantType,Integer thePlantAge,Integer thePlantQuantity,String thePlantUnit,String thePlantNo,Integer theCompanyId,String thePlantRemark,String thePlantCharacter,String thePlantHabit,Integer thePlantId)throws Exception;
	    public Plant getPlantByPlantId(Integer thePlantId)throws Exception;
	/**
	 * 获取所有植被信息
	 * @return
	 */
	public List<Plant> getAll()throws Exception;

	/**
	 * 获取所有还没使用的植物信息
	 * @return
	 */
	public List<Plant> getNotUsed()throws Exception;
	
	/**
	 * 设置植被使用状态
	 * @param plants
	 */
	public void setUsed(List<Plant> plants)throws Exception;
	}
