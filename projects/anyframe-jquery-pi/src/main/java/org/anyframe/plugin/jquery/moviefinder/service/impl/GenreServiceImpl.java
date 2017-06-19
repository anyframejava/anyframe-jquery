/*
 * Copyright 2008-2012 the original author or authors.
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
package org.anyframe.plugin.jquery.moviefinder.service.impl;

import java.util.List;

import javax.inject.Inject;
import javax.inject.Named;

import org.anyframe.plugin.jquery.domain.Genre;
import org.anyframe.plugin.jquery.moviefinder.service.GenreService;
import org.anyframe.plugin.jquery.moviefinder.service.MovieSearchVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * This GenreServiceImpl class is an Implementation class to provide genre list
 * functionality.
 * 
 * @author Sunjoong Kim
 */
@Service("jqueryGenreService")
@Transactional(rollbackFor = { Exception.class }, propagation = Propagation.REQUIRED)
public class GenreServiceImpl implements GenreService {

	@Inject
	@Named("jqueryGenreDao")
	private GenreDao genreDao;

	public List<Genre> getDropDownGenreList() throws Exception {
		return genreDao.getDropDownGenreList();
	}

	public List<Genre> getGenreList(MovieSearchVO searchVO) throws Exception {
		return genreDao.getGenreList(searchVO);
	}

	public List<String> getGenreNameList(String title) throws Exception {
		return genreDao.getGenreNameList(title);
	}
	
	public Genre getGenre(String id) throws Exception {
		return genreDao.getGenre(id);
	}
}
