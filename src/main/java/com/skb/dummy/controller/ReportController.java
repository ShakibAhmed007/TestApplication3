package com.skb.dummy.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skb.dummy.repository.UserPostRepository;

@Controller("Report")
public class ReportController {

	@Autowired
	UserPostRepository upr;

	@RequestMapping(value = "/view-report", method = RequestMethod.GET)
	public String getReportViewPage(ModelMap model) {

		// First Data.....
		String date = "";
		String value = "";
		List<String> sp = upr.getReportByDate();
		System.out.println("Full Data" + sp.size());
		for (int i = 0; i < sp.size(); i++) {
			String[] a = sp.get(i).split(",");
//			date.add("'"+a[0]+"'");
//			value.add(a[1]);

			date += a[0] + ",";
			value += a[1] + ",";
		}

		// Third Data.....

		String division = "";
		String divisionValue = "";
		List<String> sp1 = upr.getReportByDivision();
		System.out.println(sp1);
		for (int i = 0; i < sp1.size(); i++) {
			String[] a = sp1.get(i).split(",");
			division += a[0] + ",";
			divisionValue += a[1] + ",";
		}
		model.put("date", date);
		model.put("value", value);

		model.put("division", division);
		model.put("divisionValue", divisionValue);
		return "report";
	}

}
