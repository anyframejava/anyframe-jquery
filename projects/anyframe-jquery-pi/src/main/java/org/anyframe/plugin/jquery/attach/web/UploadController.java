/*
 * Copyright 2008-2011 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.anyframe.plugin.jquery.attach.web;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.anyframe.plugin.jquery.domain.Attached;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 * This UploadController class is a Controller class 
 * to provide file upload functionality.
 * 
 * @author arumb-laptop
 *
 */
@Controller
public class UploadController {
	
	@Value("#{contextProperties['repository.path']}")
	private String repositoryPath;

	/**
	 * @param file
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/jquery/upload.do")
	public String upload(
			@RequestParam(value = "fileData", required = false) MultipartFile file,
			Model model) throws Exception {
		
		File filePath = new File(repositoryPath);
		if (!filePath.exists()) {
			boolean created = filePath.mkdirs();
			if (!created) {
				throw new Exception(
						"Fail to create a directory for attached file ["
								+ filePath + "]");
			}
		}

		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmssSSS", new Locale("ko", "KR"));

		String id = "FILE-" + formatter.format(new Date());

		file.transferTo(new File(filePath + "/" + id));

		Attached attached = new Attached();

		attached.setId(id);
		attached.setName(file.getOriginalFilename());
		attached.setFileSize(file.getSize());
		
		model.addAttribute("uploadResult", attached);
		
		return "jsonView";
	}
}
