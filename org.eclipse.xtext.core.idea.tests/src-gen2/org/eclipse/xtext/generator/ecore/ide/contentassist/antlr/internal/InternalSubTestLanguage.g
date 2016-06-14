/*
 * generated by Xtext
 */
grammar InternalSubTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.generator.ecore.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.generator.ecore.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.eclipse.xtext.generator.ecore.services.SubTestLanguageGrammarAccess;

}
@parser::members {
	private SubTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(SubTestLanguageGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleSubMain
entryRuleSubMain
:
{ before(grammarAccess.getSubMainRule()); }
	 ruleSubMain
{ after(grammarAccess.getSubMainRule()); } 
	 EOF 
;

// Rule SubMain
ruleSubMain 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSubMainAccess().getGroup()); }
		(rule__SubMain__Group__0)
		{ after(grammarAccess.getSubMainAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAnotherSuperMain
entryRuleAnotherSuperMain
:
{ before(grammarAccess.getAnotherSuperMainRule()); }
	 ruleAnotherSuperMain
{ after(grammarAccess.getAnotherSuperMainRule()); } 
	 EOF 
;

// Rule AnotherSuperMain
ruleAnotherSuperMain 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAnotherSuperMainAccess().getGroup()); }
		(rule__AnotherSuperMain__Group__0)
		{ after(grammarAccess.getAnotherSuperMainAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSuperMain
entryRuleSuperMain
:
{ before(grammarAccess.getSuperMainRule()); }
	 ruleSuperMain
{ after(grammarAccess.getSuperMainRule()); } 
	 EOF 
;

// Rule SuperMain
ruleSuperMain 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSuperMainAccess().getGroup()); }
		(rule__SuperMain__Group__0)
		{ after(grammarAccess.getSuperMainAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubMain__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubMain__Group__0__Impl
	rule__SubMain__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SubMain__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubMainAccess().getLeftCurlyBracketKeyword_0()); }
	'{'
	{ after(grammarAccess.getSubMainAccess().getLeftCurlyBracketKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubMain__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubMain__Group__1__Impl
	rule__SubMain__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SubMain__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubMainAccess().getSuperMainsAssignment_1()); }
	(rule__SubMain__SuperMainsAssignment_1)
	{ after(grammarAccess.getSubMainAccess().getSuperMainsAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubMain__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubMain__Group__2__Impl
	rule__SubMain__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SubMain__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubMainAccess().getRightCurlyBracketKeyword_2()); }
	'}'
	{ after(grammarAccess.getSubMainAccess().getRightCurlyBracketKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubMain__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SubMain__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SubMain__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSubMainAccess().getAnotherAssignment_3()); }
	(rule__SubMain__AnotherAssignment_3)?
	{ after(grammarAccess.getSubMainAccess().getAnotherAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__AnotherSuperMain__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnotherSuperMain__Group__0__Impl
	rule__AnotherSuperMain__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AnotherSuperMain__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnotherSuperMainAccess().getUpsKeyword_0()); }
	'ups'
	{ after(grammarAccess.getAnotherSuperMainAccess().getUpsKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnotherSuperMain__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AnotherSuperMain__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AnotherSuperMain__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAnotherSuperMainAccess().getNameAssignment_1()); }
	(rule__AnotherSuperMain__NameAssignment_1)
	{ after(grammarAccess.getAnotherSuperMainAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SuperMain__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SuperMain__Group__0__Impl
	rule__SuperMain__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SuperMain__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSuperMainAccess().getSuperKeyword_0()); }
	'super'
	{ after(grammarAccess.getSuperMainAccess().getSuperKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SuperMain__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SuperMain__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SuperMain__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSuperMainAccess().getNameAssignment_1()); }
	(rule__SuperMain__NameAssignment_1)
	{ after(grammarAccess.getSuperMainAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SubMain__SuperMainsAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSubMainAccess().getSuperMainsSuperMainParserRuleCall_1_0()); }
		ruleSuperMain
		{ after(grammarAccess.getSubMainAccess().getSuperMainsSuperMainParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SubMain__AnotherAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSubMainAccess().getAnotherAnotherSuperMainParserRuleCall_3_0()); }
		ruleAnotherSuperMain
		{ after(grammarAccess.getSubMainAccess().getAnotherAnotherSuperMainParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AnotherSuperMain__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAnotherSuperMainAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getAnotherSuperMainAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SuperMain__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSuperMainAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getSuperMainAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;