package com.bdqn.pms.web.service.clea.impl;

import com.bdqn.pms.web.dao.clea.plant.PlantDao;
import com.bdqn.pms.web.po.Plant;
import com.bdqn.pms.web.service.clea.PlantService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.List;

@Service("plantService")
public class PlantServiceImpl implements PlantService {
	@Resource
    @SuppressWarnings ("SpringJavaAutowiringInspection")
    private PlantDao plantDao;

    public List<Plant> getPlantList(String theColmunName, String theColmunValue, Integer currentPageNo, Integer pageSize)throws Exception{
        List<Plant> theListOfPlants=null;
        try{
            theListOfPlants=plantDao.getPlantList (theColmunName,theColmunValue,currentPageNo,pageSize);
        }catch(Exception e){
            e.printStackTrace ();
        }
        return theListOfPlants;
    }
    public Long getPlantTotalCount(String theColmunName,String theColmunValue)throws Exception{
        Long thePlantQuantity=null;
        try{
            thePlantQuantity=plantDao.getPlantTotalCount (theColmunName,theColmunValue);
        }catch(Exception e){
            e.printStackTrace ();
        }
        return thePlantQuantity;
    }
    public int addPlant(String thePlantName, String thePlantType, int thePlantAge, int thePlantQuantity, String thePlantUnit, Timestamp thePlantAddDate, String thePlantNo, Integer thePlantDel,Integer theCompanyId, String thePlantRemark, String thePlantCharacter, String thePlantHabit)throws Exception{
        int theResultOfAdd=0;
        try{
            theResultOfAdd=plantDao.addPlant (thePlantName,thePlantType,thePlantAge,thePlantQuantity,thePlantUnit,thePlantAddDate,thePlantNo,thePlantDel,theCompanyId,thePlantRemark,thePlantCharacter,thePlantHabit);
        }catch (Exception e){
            e.printStackTrace ();
        }
        return theResultOfAdd;
    }

    public Integer checkIsThePlantUsing(Integer thePlantId)throws Exception {
        Integer theResultAboutIsPlantUsing = -1;
        try {
            theResultAboutIsPlantUsing = plantDao.checkIsThePlantUsing (thePlantId);
        } catch (Exception e) {
            e.printStackTrace ( );
        }
        return theResultAboutIsPlantUsing;
    }
    public int deletePlant(int thePlantId)throws Exception{
        int theResultOfDel=0;
        try{
            theResultOfDel=plantDao.deletePlant (thePlantId);
        }catch (Exception e){
            e.printStackTrace ();
        }
        return theResultOfDel;
    }

    public int checkIsThePlantNoRepeat(String thePlantNo)throws Exception{
        int theResultAboutIsPlantNoRepeat=-1;
        try{
            theResultAboutIsPlantNoRepeat=plantDao.checkIsThePlantNoRepeat (thePlantNo);
        }catch(Exception e){
            e.printStackTrace ();
        }
        return theResultAboutIsPlantNoRepeat;
    }
    public int checkIsThePlantNoOfTheSpecifedPlantNoRepeat(Integer thePlantId,String thePlantNo)throws Exception{
        int theResultAboutIsSpecifedPlantNoNoRepeat=-1;
        try{
            theResultAboutIsSpecifedPlantNoNoRepeat=plantDao.checkIsThePlantNoOfTheSpecifedPlantNoRepeat (thePlantId,thePlantNo);
        }catch(Exception e){
            e.printStackTrace ();
        }
        return theResultAboutIsSpecifedPlantNoNoRepeat;
    }
    public int updatePlant(String thePlantName,String thePlantType,Integer thePlantAge,Integer thePlantQuantity,String thePlantUnit,String thePlantNo,Integer theCompanyId,String thePlantRemark,String thePlantCharacter,String thePlantHabit,Integer thePlantId)throws Exception{
        int theResultOfUpdatePlant=-1;
        try{
            theResultOfUpdatePlant=plantDao.updatePlant (thePlantName,thePlantType,thePlantAge,thePlantQuantity,thePlantUnit,thePlantNo,theCompanyId,thePlantRemark,thePlantCharacter,thePlantHabit,thePlantId);
        }catch(Exception e){
            e.printStackTrace ();
        }
        return theResultOfUpdatePlant;
    }
    public Plant getPlantByPlantId(Integer thePlantId)throws Exception{
        Plant plant=null;
        try{
            plant=plantDao.getPlantByPlantId (thePlantId);
        }catch(Exception e){
            e.printStackTrace ();
        }
        return plant;
    }
		@Override
	public List<Plant> getAll() throws Exception{
		return null;
	}

	@Override
	public List<Plant> getNotUsed() throws Exception{
		return plantDao.getNotUsed();
	}

	@Override
	public void setUsed(List<Plant> plants) throws Exception{
		
	}

}
