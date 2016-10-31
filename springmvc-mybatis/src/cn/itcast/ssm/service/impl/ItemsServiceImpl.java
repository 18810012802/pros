package cn.itcast.ssm.service.impl;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.exception.CustomException;
import cn.itcast.ssm.mapper.ItemsMapper;
import cn.itcast.ssm.mapper.ItemsMapperCustom;
import cn.itcast.ssm.po.Items;
import cn.itcast.ssm.po.ItemsCustom;
import cn.itcast.ssm.po.ItemsQueryVo;
import cn.itcast.ssm.service.ItemsService;

public class ItemsServiceImpl implements ItemsService{
	@Autowired
	private ItemsMapperCustom itemsMapperCustom;
	
	@Autowired
	private ItemsMapper itemsMapper;
	
	@Override
	public List<ItemsCustom> findItemsList(ItemsQueryVo itemsQueryVo)
			throws Exception {
		// TODO Auto-generated method stub
		
		
		return itemsMapperCustom.findItemsList(itemsQueryVo);
	}
	
	@Override
	public ItemsCustom findItemsById(Integer id) throws Exception {
		// TODO Auto-generated method stub
		Items items=itemsMapper.selectByPrimaryKey(id);
		if(items==null){
			throw new CustomException("修改的商品信息不存在！");
		}
		ItemsCustom itermsCustom=null;
		if(items!=null){
			itermsCustom=new ItemsCustom();
			BeanUtils.copyProperties(items,itermsCustom);
		}
		
		return itermsCustom;
	}
	
	@Override
	public void updateItems(Integer id, ItemsCustom itemsCustom) throws Exception {
		// TODO Auto-generated method stub
		itemsCustom.setId(id);
		itemsMapper.updateByPrimaryKey(itemsCustom);
	}

}
