package com.bdqn.pms.web.dao.clea.plant;

import com.bdqn.pms.web.po.Plant;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.List;

public interface PlantDao {
	public List<Plant> getPlantList(@Param("colmunName")String theColmunName,@Param("colmunValue")String theColmunValue,@Param("from")Integer currentPageNo,@Param("pageSize")Integer pageSize)throws Exception;
    public Long getPlantTotalCount(@Param("colmunName")String theColmunName,@Param("colmunValue")String theColmunValue)throws Exception;
    public int addPlant(@Param("plantName")String thePlantName, @Param("plantType")String thePlantType, @Param("plantAge")int thePlantAge, @Param("plantQuantity")int thePlantQuantity, @Param("plantUnit")String thePlantUnit, @Param("plantAddDate")Timestamp thePlantAddDate,@Param("plantNo")String thePlantNo,@Param("plantDel")Integer thePlantDel,@Param("companyId")Integer theCompanyId,@Param("plantRemark")String thePlantRemark, @Param("plantCharacter")String thePlantCharacter,@Param("plantHabit")String thePlantHabit)throws Exception;
    public Integer checkIsThePlantUsing(@Param("plantId")Integer thePlantId)throws Exception;  //检测植物是否正在被使用，如果有返回值则表明该id的植物正在被使用
    public int deletePlant(@Param("plantId")int thePlantId)throws Exception;
    public int checkIsThePlantNoRepeat(@Param("plantNo")String thePlantNo)throws Exception;  //检测植物编号是否已经有
    public int checkIsThePlantNoOfTheSpecifedPlantNoRepeat(@Param("plantId")Integer thePlantId,@Param("plantNo")String thePlantNo)throws Exception;
    public int updatePlant(@Param("plantName")String thePlantName,@Param("plantType")String thePlantType,@Param("plantAge")Integer thePlantAge,@Param("plantQuantity")Integer thePlantQuantity,@Param("plantUnit")String thePlantUnit,@Param("plantNo")String thePlantNo,@Param("companyId")Integer theCompanyId,@Param("plantRemark")String thePlantRemark,@Param("plantCharacter")String thePlantCharacter,@Param("plantHabit")String thePlantHabit,@Param("plantId")Integer thePlantId)throws Exception;
    public Plant getPlantByPlantId(@Param("plantId")Integer thePlantId)throws Exception;
   /**
	 * 获取所有植被信息
	 * @return
	 */
	public List<Plant> getAll() throws Exception;

	/**
	 * 获取所有还没使用的植物信息
	 * @return
	 */
	public List<Plant> getNotUsed()throws Exception;
	
	/**
	 * 设置植被使用状态
	 * @param plants
	 */
	public int setUsed(@Param("plantset_types") List<Plant> plantset_types)throws Exception;
	
	/**
	 * 
	 * @param plantset_types
	 * @return
	 * @throws Exception
	 */
	
	public List<Plant> plantSeted(@Param("plantset_types") List<Plant> plantset_types) throws Exception;
	
	/**
	 * 
	 * @param oldPlantTypes
	 * @param newPlantTypes
	 * @return
	 */
	 
	public int modifyPlantUsed(@Param("notUsedId") List<Integer> notUsedId,@Param("usedId") List<Integer> usedId);

}
