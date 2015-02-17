package org.eclipse.xtext.linking.idea.completion

import org.eclipse.xtext.idea.lang.AbstractXtextLanguage;
import org.eclipse.xtext.linking.idea.lang.Bug287988TestLanguageLanguage;

class Bug287988TestLanguageCompletionContributor extends AbstractBug287988TestLanguageCompletionContributor {
	new() {
		this(Bug287988TestLanguageLanguage.INSTANCE)
	}
	
	new(AbstractXtextLanguage lang) {
		super(lang)
		//custom rules here
	}
}


