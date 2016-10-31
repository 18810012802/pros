package cn.itcast.ssm.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.controller.validation.ValidGroup1;
import cn.itcast.ssm.po.ItemsCustom;
import cn.itcast.ssm.po.ItemsQueryVo;
import cn.itcast.ssm.service.ItemsService;

@Controller
@RequestMapping(value="/items",method={RequestMethod.POST,RequestMethod.GET})
public class ItemsController {
	@Autowired
	private ItemsService itemsService;
	@RequestMapping("/queryItems")
	public ModelAndView queryItems(HttpServletRequest request,ItemsQueryVo itemsQueryVo) throws Exception{
		System.out.println(request.getParameter("id"));
		List<ItemsCustom> itemsList=itemsService.findItemsList(itemsQueryVo);
		ModelAndView mav=new ModelAndView();
		mav.addObject("itemsList",itemsList);
		mav.setViewName("/items/itemsList");
		return mav;
	}
	@RequestMapping("/editItems")
	public ModelAndView editItems(@RequestParam(value="id",required=true,defaultValue="1") Integer item_id) throws Exception{
		ModelAndView mav=new ModelAndView();
		ItemsCustom itemsCustom=itemsService.findItemsById(item_id);
		/*if(itemsCustom==null){
			throw new CustomException("修改的商品信息不存在！");
		}*/
		mav.addObject("itemsCustom",itemsCustom);
		mav.setViewName("/items/editItems");
		return mav;
	}
	@RequestMapping("/editItemsSubmit")
	public String editItemsSubmit(Model model,Integer id,
			@ModelAttribute("itemsCustom") @Validated(value={ValidGroup1.class}) ItemsCustom itemsCustom,
			BindingResult bindingResult,MultipartFile items_pic) throws Exception{
		//ModelAndView mav=new ModelAndView();
		if(bindingResult.hasErrors()){
			List<ObjectError> allErrors=bindingResult.getAllErrors();
			for(ObjectError objectError:allErrors){
				System.out.println(objectError.getDefaultMessage());
			}
			model.addAttribute("allErrors",allErrors);
			return "items/editItems";
		}
		String ofn=items_pic.getOriginalFilename();
		if(items_pic!=null&&ofn!=null&&ofn.length()>0){
			String pic_path="F:\\gis图元\\";
			
			String newFileName=UUID.randomUUID()+ofn.substring(ofn.lastIndexOf("."));
			File newFile=new File(pic_path+newFileName);
			items_pic.transferTo(newFile);
			itemsCustom.setPic(newFileName);
		}
		itemsService.updateItems(id, itemsCustom);
		//mav.setViewName("success");
		//return "redirect:queryItems.action";
		return "forward:queryItems.action";
	}
	
	@RequestMapping("/editItemsString")
	public String editItemsString(Model model) throws Exception{
		ModelAndView mav=new ModelAndView();
		ItemsCustom itemsCustom=itemsService.findItemsById(1);
		/*mav.addObject("itemsCustom",itemsCustom);
		mav.setViewName("/items/editItems");*/
		model.addAttribute("itemsCustom",itemsCustom);
		return "/items/editItems";
	}
	@RequestMapping("/deleteItems")
	public String deleteItems(Integer[] items_id) throws Exception{
		ModelAndView mav=new ModelAndView();
		ItemsCustom itemsCustom=itemsService.findItemsById(1);
		/*mav.addObject("itemsCustom",itemsCustom);
		mav.setViewName("/items/editItems");*/
		return "success";
	}
	
	@RequestMapping("/editItemsQuery")
	public ModelAndView editItemsQuery(HttpServletRequest request,ItemsQueryVo itemsQueryVo) throws Exception{
		List<ItemsCustom> itemsList=itemsService.findItemsList(itemsQueryVo);
		ModelAndView mav=new ModelAndView();
		mav.addObject("itemsList",itemsList);
		mav.setViewName("/items/editItemsQuery");
		return mav;
	}
	@RequestMapping("/editItemsAllSubmit")
	public String editItemsAllSubmit(@Validated ItemsQueryVo itemsQueryVo,BindingResult bindingResult) throws Exception{
		
		return "success";
	}
	
	@RequestMapping("/itemsView/{id}")
	public @ResponseBody ItemsCustom itemsView(@PathVariable("id") Integer id) throws Exception{
		ItemsCustom itemsCustom=itemsService.findItemsById(id);
		return itemsCustom;
	}
}
