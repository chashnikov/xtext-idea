/*
 * generated by Xtext
 */
grammar PsiInternalParametersTestLanguageEx;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.parser.parameters.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.parser.parameters.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.parser.parameters.idea.lang.ParametersTestLanguageExElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.parameters.services.ParametersTestLanguageExGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected ParametersTestLanguageExGrammarAccess grammarAccess;

	protected ParametersTestLanguageExElementTypeProvider elementTypeProvider;

	public PsiInternalParametersTestLanguageExParser(PsiBuilder builder, TokenStream input, ParametersTestLanguageExElementTypeProvider elementTypeProvider, ParametersTestLanguageExGrammarAccess grammarAccess) {
		this(input);
		setPsiBuilder(builder);
    	this.grammarAccess = grammarAccess;
		this.elementTypeProvider = elementTypeProvider;
	}

	@Override
	protected String getFirstRuleName() {
		return "ParserRuleParameters";
	}

}

//Entry rule entryRuleParserRuleParameters
entryRuleParserRuleParameters returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getParserRuleParametersElementType()); }
	iv_ruleParserRuleParameters=ruleParserRuleParameters
	{ $current=$iv_ruleParserRuleParameters.current; }
	EOF;

// Rule ParserRuleParameters
ruleParserRuleParameters returns [Boolean current=false]
:
	{
		markComposite(elementTypeProvider.getParserRuleParameters_ParserRuleParametersParserRuleCallElementType());
	}
	this_ParserRuleParameters_0=superParserRuleParameters
	{
		$current = $this_ParserRuleParameters_0.current;
		doneComposite();
	}
;

//Entry rule entryRuleScenario1
entryRuleScenario1 returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getScenario1ElementType()); }
	iv_ruleScenario1=ruleScenario1
	{ $current=$iv_ruleScenario1.current; }
	EOF;

// Rule Scenario1
ruleScenario1 returns [Boolean current=false]
:
	{
		markComposite(elementTypeProvider.getScenario1_Scenario1ParserRuleCallElementType());
	}
	this_Scenario1_0=superScenario1
	{
		$current = $this_Scenario1_0.current;
		doneComposite();
	}
;


// Rule Scenario1
norm1_Scenario1 returns [Boolean current=false]
:
	{
		markComposite(elementTypeProvider.getScenario1_Scenario1ParserRuleCallElementType());
	}
	this_Scenario1_0=normSuper1_Scenario1
	{
		$current = $this_Scenario1_0.current;
		doneComposite();
	}
;

//Entry rule entrySuperParserRuleParameters
entrySuperParserRuleParameters returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParametersElementType()); }
	iv_superParserRuleParameters=superParserRuleParameters
	{ $current=$iv_superParserRuleParameters.current; }
	EOF;

// Rule ParserRuleParameters
superParserRuleParameters returns [Boolean current=false]
:
	(
		(
			{
				precedeComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ParserRuleParametersAction_0ElementType());
				doneComposite();
				associateWithSemanticElement();
			}
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_NumberSignDigitOneKeyword_1_0_0ElementType());
				}
				otherlv_1='#1'
				{
					doneLeaf(otherlv_1);
				}
				(
					(
						{
							markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario1ParserRuleCall_1_0_1_0ElementType());
						}
						lv_scenario_2_0=norm1_Scenario1
						{
							doneComposite();
							if(!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_NumberSignDigitTwoKeyword_1_1_0ElementType());
				}
				otherlv_3='#2'
				{
					doneLeaf(otherlv_3);
				}
				(
					(
						{
							markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario1ParserRuleCall_1_1_1_0ElementType());
						}
						lv_scenario_4_0=ruleScenario1
						{
							doneComposite();
							if(!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_NumberSignDigitThreeKeyword_1_2_0ElementType());
				}
				otherlv_5='#3'
				{
					doneLeaf(otherlv_5);
				}
				(
					(
						{
							markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario2ParserRuleCall_1_2_1_0ElementType());
						}
						lv_scenario_6_0=norm1_Scenario2
						{
							doneComposite();
							if(!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_NumberSignDigitFourKeyword_1_3_0ElementType());
				}
				otherlv_7='#4'
				{
					doneLeaf(otherlv_7);
				}
				(
					(
						{
							markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario2ParserRuleCall_1_3_1_0ElementType());
						}
						lv_scenario_8_0=ruleScenario2
						{
							doneComposite();
							if(!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
					)
				)
			)
			    |
			(
				((
					'#5'
					(
						(
							norm1_Scenario2
						)
					)
				)
				)=>
				(
					{
						markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_NumberSignDigitFiveKeyword_1_4_0_0ElementType());
					}
					otherlv_9='#5'
					{
						doneLeaf(otherlv_9);
					}
					(
						(
							{
								markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario2ParserRuleCall_1_4_0_1_0ElementType());
							}
							lv_scenario_10_0=norm1_Scenario2
							{
								doneComposite();
								if(!$current) {
									associateWithSemanticElement();
									$current = true;
								}
							}
						)
					)
				)
			)
			    |
			(
				((
					'#6'
					(
						(
							ruleScenario2
						)
					)
				)
				)=>
				(
					{
						markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_NumberSignDigitSixKeyword_1_5_0_0ElementType());
					}
					otherlv_11='#6'
					{
						doneLeaf(otherlv_11);
					}
					(
						(
							{
								markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario2ParserRuleCall_1_5_0_1_0ElementType());
							}
							lv_scenario_12_0=ruleScenario2
							{
								doneComposite();
								if(!$current) {
									associateWithSemanticElement();
									$current = true;
								}
							}
						)
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_NumberSignDigitSevenKeyword_1_6_0ElementType());
				}
				otherlv_13='#7'
				{
					doneLeaf(otherlv_13);
				}
				(
					(
						{
							markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario3ParserRuleCall_1_6_1_0ElementType());
						}
						lv_scenario_14_0=norm1_Scenario3
						{
							doneComposite();
							if(!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_NumberSignDigitEightKeyword_1_7_0ElementType());
				}
				otherlv_15='#8'
				{
					doneLeaf(otherlv_15);
				}
				(
					(
						{
							markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario3ParserRuleCall_1_7_1_0ElementType());
						}
						lv_scenario_16_0=ruleScenario3
						{
							doneComposite();
							if(!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_NumberSignDigitNineKeyword_1_8_0ElementType());
				}
				otherlv_17='#9'
				{
					doneLeaf(otherlv_17);
				}
				(
					(
						((
							norm1_IdOrKeyword
						)
						)=>
						(
							{
								markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario4ParserRuleCall_1_8_1_0_0ElementType());
							}
							lv_scenario_18_0=norm1_Scenario4
							{
								doneComposite();
								if(!$current) {
									associateWithSemanticElement();
									$current = true;
								}
							}
						)
					)
					    |
					(
						(
							(
								{
									markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario2ParserRuleCall_1_8_1_1_0_0ElementType());
								}
								lv_scenario_19_0=norm1_Scenario2
								{
									doneComposite();
									if(!$current) {
										associateWithSemanticElement();
										$current = true;
									}
								}
							)
						)
						(
							{
								markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_KeywordKeyword_1_8_1_1_1ElementType());
							}
							otherlv_20='keyword'
							{
								doneLeaf(otherlv_20);
							}
						)?
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_NumberSignDigitOneDigitZeroKeyword_1_9_0ElementType());
				}
				otherlv_21='#10'
				{
					doneLeaf(otherlv_21);
				}
				(
					(
						((
							norm1_IdOrKeyword
						)
						)=>
						(
							{
								markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario4ParserRuleCall_1_9_1_0_0ElementType());
							}
							lv_scenario_22_0=norm1_Scenario4
							{
								doneComposite();
								if(!$current) {
									associateWithSemanticElement();
									$current = true;
								}
							}
						)
					)
					    |
					(
						(
							(
								{
									markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario2ParserRuleCall_1_9_1_1_0_0ElementType());
								}
								lv_scenario_23_0=ruleScenario2
								{
									doneComposite();
									if(!$current) {
										associateWithSemanticElement();
										$current = true;
									}
								}
							)
						)
						(
							{
								markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_KeywordKeyword_1_9_1_1_1ElementType());
							}
							otherlv_24='keyword'
							{
								doneLeaf(otherlv_24);
							}
						)?
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_NumberSignDigitOneDigitOneKeyword_1_10_0ElementType());
				}
				otherlv_25='#11'
				{
					doneLeaf(otherlv_25);
				}
				(
					(
						((
							ruleIdOrKeyword
						)
						)=>
						(
							{
								markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario4ParserRuleCall_1_10_1_0_0ElementType());
							}
							lv_scenario_26_0=ruleScenario4
							{
								doneComposite();
								if(!$current) {
									associateWithSemanticElement();
									$current = true;
								}
							}
						)
					)
					    |
					(
						(
							(
								{
									markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario2ParserRuleCall_1_10_1_1_0_0ElementType());
								}
								lv_scenario_27_0=norm1_Scenario2
								{
									doneComposite();
									if(!$current) {
										associateWithSemanticElement();
										$current = true;
									}
								}
							)
						)
						(
							{
								markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_KeywordKeyword_1_10_1_1_1ElementType());
							}
							otherlv_28='keyword'
							{
								doneLeaf(otherlv_28);
							}
						)?
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_NumberSignDigitOneDigitTwoKeyword_1_11_0ElementType());
				}
				otherlv_29='#12'
				{
					doneLeaf(otherlv_29);
				}
				(
					(
						((
							ruleIdOrKeyword
						)
						)=>
						(
							{
								markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario4ParserRuleCall_1_11_1_0_0ElementType());
							}
							lv_scenario_30_0=ruleScenario4
							{
								doneComposite();
								if(!$current) {
									associateWithSemanticElement();
									$current = true;
								}
							}
						)
					)
					    |
					(
						(
							(
								{
									markComposite(elementTypeProvider.getParametersTestLanguageParserRuleParameters_ScenarioScenario2ParserRuleCall_1_11_1_1_0_0ElementType());
								}
								lv_scenario_31_0=ruleScenario2
								{
									doneComposite();
									if(!$current) {
										associateWithSemanticElement();
										$current = true;
									}
								}
							)
						)
						(
							{
								markLeaf(elementTypeProvider.getParametersTestLanguageParserRuleParameters_KeywordKeyword_1_11_1_1_1ElementType());
							}
							otherlv_32='keyword'
							{
								doneLeaf(otherlv_32);
							}
						)?
					)
				)
			)
		)
	)
;

//Entry rule entrySuperScenario1
entrySuperScenario1 returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getParametersTestLanguageScenario1ElementType()); }
	iv_superScenario1=superScenario1
	{ $current=$iv_superScenario1.current; }
	EOF;

// Rule Scenario1
superScenario1 returns [Boolean current=false]
:
	(
		(
			{
				markLeaf(elementTypeProvider.getParametersTestLanguageScenario1_SecondIDTerminalRuleCall_1_0_0ElementType());
			}
			lv_second_0_0=RULE_ID
			{
				if(!$current) {
					associateWithSemanticElement();
					$current = true;
				}
			}
			{
				doneLeaf(lv_second_0_0);
			}
		)
	)
;


// Rule Scenario1
normSuper1_Scenario1 returns [Boolean current=false]
:
	(
		(
			{
				markLeaf(elementTypeProvider.getParametersTestLanguageScenario1_FirstIDTerminalRuleCall_0_0_0ElementType());
			}
			lv_first_0_0=RULE_ID
			{
				if(!$current) {
					associateWithSemanticElement();
					$current = true;
				}
			}
			{
				doneLeaf(lv_first_0_0);
			}
		)
	)
;

//Entry rule entryRuleScenario2
entryRuleScenario2 returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getScenario2ElementType()); }
	iv_ruleScenario2=ruleScenario2
	{ $current=$iv_ruleScenario2.current; }
	EOF;

// Rule Scenario2
ruleScenario2 returns [Boolean current=false]
:
	(
		(
			{
				markComposite(elementTypeProvider.getScenario2_FirstIdOrKeywordParserRuleCall_0ElementType());
			}
			lv_first_0_0=ruleIdOrKeyword
			{
				doneComposite();
				if(!$current) {
					associateWithSemanticElement();
					$current = true;
				}
			}
		)
	)
;


// Rule Scenario2
norm1_Scenario2 returns [Boolean current=false]
:
	(
		(
			{
				markComposite(elementTypeProvider.getScenario2_FirstIdOrKeywordParserRuleCall_0ElementType());
			}
			lv_first_0_0=norm1_IdOrKeyword
			{
				doneComposite();
				if(!$current) {
					associateWithSemanticElement();
					$current = true;
				}
			}
		)
	)
;

//Entry rule entryRuleScenario3
entryRuleScenario3 returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getScenario3ElementType()); }
	iv_ruleScenario3=ruleScenario3
	{ $current=$iv_ruleScenario3.current; }
	EOF;

// Rule Scenario3
ruleScenario3 returns [Boolean current=false]
:
	(
		(
			((
				ruleIdOrKeyword
			)
			)=>
			(
				{
					markComposite(elementTypeProvider.getScenario3_FirstIdOrKeywordParserRuleCall_0_0ElementType());
				}
				lv_first_0_0=ruleIdOrKeyword
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
		    |
		(
			(
				{
					markLeaf(elementTypeProvider.getScenario3_SecondKeywordKeyword_1_0ElementType());
				}
				lv_second_1_0='keyword'
				{
					doneLeaf(lv_second_1_0);
				}
				{
					if (!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
	)
;


// Rule Scenario3
norm1_Scenario3 returns [Boolean current=false]
:
	(
		(
			((
				norm1_IdOrKeyword
			)
			)=>
			(
				{
					markComposite(elementTypeProvider.getScenario3_FirstIdOrKeywordParserRuleCall_0_0ElementType());
				}
				lv_first_0_0=norm1_IdOrKeyword
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
		    |
		(
			(
				{
					markLeaf(elementTypeProvider.getScenario3_SecondKeywordKeyword_1_0ElementType());
				}
				lv_second_1_0='keyword'
				{
					doneLeaf(lv_second_1_0);
				}
				{
					if (!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
	)
;

//Entry rule entryRuleScenario4
entryRuleScenario4 returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getScenario4ElementType()); }
	iv_ruleScenario4=ruleScenario4
	{ $current=$iv_ruleScenario4.current; }
	EOF;

// Rule Scenario4
ruleScenario4 returns [Boolean current=false]
:
	(
		(
			((
				ruleIdOrKeyword
			)
			)=>
			(
				{
					markComposite(elementTypeProvider.getScenario4_SecondIdOrKeywordParserRuleCall_0_0ElementType());
				}
				lv_second_0_0=ruleIdOrKeyword
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getScenario4_KeywordKeyword_1ElementType());
		}
		otherlv_1='keyword'
		{
			doneLeaf(otherlv_1);
		}
	)
;


// Rule Scenario4
norm1_Scenario4 returns [Boolean current=false]
:
	(
		(
			((
				norm1_IdOrKeyword
			)
			)=>
			(
				{
					markComposite(elementTypeProvider.getScenario4_SecondIdOrKeywordParserRuleCall_0_0ElementType());
				}
				lv_second_0_0=norm1_IdOrKeyword
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getScenario4_KeywordKeyword_1ElementType());
		}
		otherlv_1='keyword'
		{
			doneLeaf(otherlv_1);
		}
	)
;

//Entry rule entryRuleIdOrKeyword
entryRuleIdOrKeyword returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getIdOrKeywordElementType()); }
	iv_ruleIdOrKeyword=ruleIdOrKeyword
	{ $current=$iv_ruleIdOrKeyword.current; }
	EOF;

// Rule IdOrKeyword
ruleIdOrKeyword returns [Boolean current=false]
:
	{
		markLeaf(elementTypeProvider.getIdOrKeyword_IDTerminalRuleCall_1ElementType());
	}
	this_ID_0=RULE_ID
	{
		doneLeaf(this_ID_0);
	}
;


// Rule IdOrKeyword
norm1_IdOrKeyword returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getIdOrKeyword_KeywordKeyword_0_0ElementType());
		}
		kw='keyword'
		{
			doneLeaf(kw);
		}
		    |
		{
			markLeaf(elementTypeProvider.getIdOrKeyword_IDTerminalRuleCall_1ElementType());
		}
		this_ID_1=RULE_ID
		{
			doneLeaf(this_ID_1);
		}
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;