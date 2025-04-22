package com.grownited.controller.Nutrionist;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;
import java.util.Map;

import com.grownited.entity.FoodEntity;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import org.springframework.web.bind.annotation.RequestParam;
import com.grownited.repository.Foodrepo;

@Controller
public class FoodController {

	@Autowired
	Foodrepo repofood;

	@Autowired
	Cloudinary cloud;

	@GetMapping("fooditems")
	public String fooditems(Model model) {
		// model.addAttribute("fooitem", model)
		List<FoodEntity> foods = repofood.findAll();
		model.addAttribute("fooitem", foods);
		return "Nutrionist/Foodcard";
	}

	@GetMapping("/addFoodItem")
	public String addFoodItem() {
		return "Nutrionist/AddFooditem";
	}

	@PostMapping("/addFood")
	public String addFood(FoodEntity foodEntity, MultipartFile foodPic) {
   
		try {
			Map uploadPhoto = cloud.uploader().upload(foodPic.getBytes(), ObjectUtils.emptyMap());
			String foodPicPath = uploadPhoto.get("url").toString();
			foodEntity.setFoodPicPath(foodPicPath);
			repofood.save(foodEntity);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	@GetMapping("editfood")

	public String editfood(Integer foodid, Model model) {
		List<FoodEntity> foods = repofood.findAll();
		model.addAttribute("food", foods);
		Optional<FoodEntity> op = repofood.findById(foodid);
		model.addAttribute("op", op.get());

		return "Nutrionist/EditFood";
	}

	@PostMapping("updatefood")
	public String updatefood(Model model, FoodEntity foodentity, MultipartFile foodImage) {
	    Optional<FoodEntity> op = repofood.findById(foodentity.getFoodid());
	    FoodEntity entityfood = op.get();

	    try {
	        if (!foodImage.isEmpty()) {
	            Map result1 = cloud.uploader().upload(foodImage.getBytes(), ObjectUtils.emptyMap());
	            String foodImg = result1.get("url").toString();
	            entityfood.setFoodPicPath(foodImg);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        model.addAttribute("error", "Image upload failed: " + e.getMessage());
	        return "errorPage"; // Change to your error page
	    }

	    // Update the rest of the fields
	    entityfood.setFoodname(foodentity.getFoodname());
	    entityfood.setDietype(foodentity.getDietype());
	    entityfood.setFats(foodentity.getFats());
	    entityfood.setProtein(foodentity.getProtein());
	    entityfood.setCalories(foodentity.getCalories());
	    entityfood.setFoodcategory(foodentity.getFoodcategory());

	    repofood.save(entityfood);

	    return "redirect:/addmeal";

	}

}
