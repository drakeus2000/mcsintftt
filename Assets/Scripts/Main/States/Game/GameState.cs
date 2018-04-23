using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;
using Ink.Runtime;
using UnityEngine.UI;

using Debug = UnityEngine.Debug;

public class GameState : MainState {

	// The json compiled ink story
	public TextAsset storyJSON_austria;
    public TextAsset storyJSON_slovenia;
    public TextAsset storyJSON_slovakia;
    public TextAsset storyJSON;  // ovo vrati da nije public stavlja default kao austrisku ako nije predefinisana druga
    string culture;
    // The ink runtime story object
    private Story story;

    bool game_complete_not_submited = false;

    public int GameComplete;
    public int old_game_progress = 0;

    public int q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20, q21, q22, q23, q24, no_deaths;

    public ContentManager contentManager;

	public ContentView contentViewPrefab;
	public ChoiceGroupView choiceGroupViewPrefab;
	public ChevronButtonView chevronViewPrefab;
	public EmptyView emptyViewPrefab;

    public GameObject submit;

	public Transform contentParent;
	public ChoiceGroupContainerView choiceContainerView;

	public ScrollToBottomButtonView scrollToBottomButton;

	public bool hasMadeAChoice = false;

	public SettingsView settingsView;
	public SettingsButton settingsButton;

   public string[] predefinisana_pitanja_redosled = { "0", "M2", "M6", "M8", "M17", "M20", "M13", "M14", "M15", "M7", "M5", "M9", "M16", "M19", "M18", "M11", "M23", "M10", "M22", "M12", "M21", "M24", "M4", "M3", "M1" };

    private void Awake () {
		contentManager.enabled = false;
		settingsView.Hide();
		settingsButton.Hide();
        culture = PlayerPrefs.GetString("culture");
        Debug.Log(culture);
        if (culture == "austrian") storyJSON = storyJSON_austria;
        if (culture == "slovenian") storyJSON = storyJSON_slovenia;
        if (culture == "slovakian") storyJSON = storyJSON_slovakia; 
    }

    public void Update ()
    {
        GameComplete = (int)story.variablesState["game_progress"];

        if (old_game_progress < GameComplete)
        {
            save_current_state();
            old_game_progress = GameComplete;
        }


            if ((GameComplete>=98) && (game_complete_not_submited == false))
        {
            q1 = (int)story.variablesState["M1"];
            PlayerPrefs.SetInt("M1", (int)story.variablesState["M1"]);
            q2 = (int)story.variablesState["M2"];
            PlayerPrefs.SetInt("M2", (int)story.variablesState["M2"]);
            q3 = (int)story.variablesState["M3"];
            PlayerPrefs.SetInt("M3", (int)story.variablesState["M3"]);
            q4 = (int)story.variablesState["M4"];
            PlayerPrefs.SetInt("M4", (int)story.variablesState["M4"]);
            q5 = (int)story.variablesState["M5"];
            PlayerPrefs.SetInt("M5", (int)story.variablesState["M5"]);
            q6 = (int)story.variablesState["M6"];
            PlayerPrefs.SetInt("M6", (int)story.variablesState["M6"]);
            q7 = (int)story.variablesState["M7"];
            PlayerPrefs.SetInt("M7", (int)story.variablesState["M7"]);
            q8 = (int)story.variablesState["M8"];
            PlayerPrefs.SetInt("M8", (int)story.variablesState["M8"]);
            q9 = (int)story.variablesState["M9"];
            PlayerPrefs.SetInt("M9", (int)story.variablesState["M9"]);
            q10 = (int)story.variablesState["M10"];
            PlayerPrefs.SetInt("M10", (int)story.variablesState["M10"]);
            q11 = (int)story.variablesState["M11"];
            PlayerPrefs.SetInt("M11", (int)story.variablesState["M11"]);
            q12 = (int)story.variablesState["M12"];
            PlayerPrefs.SetInt("M12", (int)story.variablesState["M12"]);
            q13 = (int)story.variablesState["M13"];
            PlayerPrefs.SetInt("M13", (int)story.variablesState["M13"]);
            q14 = (int)story.variablesState["M14"];
            PlayerPrefs.SetInt("M14", (int)story.variablesState["M14"]);
            q15 = (int)story.variablesState["M15"];
            PlayerPrefs.SetInt("M15", (int)story.variablesState["M15"]);
            q16 = (int)story.variablesState["M16"];
            PlayerPrefs.SetInt("M16", (int)story.variablesState["M16"]);
            q17 = (int)story.variablesState["M17"];
            PlayerPrefs.SetInt("M17", (int)story.variablesState["M17"]);
            q18 = (int)story.variablesState["M18"];
            PlayerPrefs.SetInt("M18", (int)story.variablesState["M18"]);
            q19 = (int)story.variablesState["M19"];
            PlayerPrefs.SetInt("M19", (int)story.variablesState["M19"]);
            q20 = (int)story.variablesState["M20"];
            PlayerPrefs.SetInt("M20", (int)story.variablesState["M20"]);
            q21 = (int)story.variablesState["M21"];
            PlayerPrefs.SetInt("M21", (int)story.variablesState["M21"]);
            q22 = (int)story.variablesState["M22"];
            PlayerPrefs.SetInt("M22", (int)story.variablesState["M22"]);
            q23 = (int)story.variablesState["M23"];
            PlayerPrefs.SetInt("M23", (int)story.variablesState["M23"]);
            q24 = (int)story.variablesState["M24"];
            PlayerPrefs.SetInt("M24", (int)story.variablesState["M24"]);
            
            PlayerPrefs.SetInt("No_of_death", (int)story.variablesState["No_of_death"]);
            no_deaths = (int)story.variablesState["No_of_death"];

            game_complete_not_submited = true;
            PlayerPrefs.SetString("game_complete_not_submited", "true");
            submit.SetActive(true);

        }

    } 
	public override void Enter () {
		base.Enter ();
		contentManager.enabled = true;
		settingsButton.FadeIn();

		if(storyJSON == null) {
			Debug.LogWarning("Drag a valid story JSON file into the StoryReader component.");
			enabled = false;
		}
		story = new Story(storyJSON.text);
		StartCoroutine(OnAdvanceStory());
        if (PlayerPrefs.HasKey("inkSaveState_stefanovaigra"))
        {
            string savedState = PlayerPrefs.GetString("inkSaveState_stefanovaigra");
            story.state.LoadJson(savedState);
        }
    }

	public void Clear () {
		StopAllCoroutines();
		ClearContent();
		choiceContainerView.Clear();
		contentManager.enabled = false;
		settingsButton.Hide();
		settingsView.Hide();
	}

	private void ClearContent () {
		for (int i = contentParent.childCount-1; i >= 0; i--) {
			Destroy(contentParent.GetChild(i).gameObject);
		}
	}

    public void save_current_state() {
        int saveme = GameComplete / 4;



        //ovde sam
        if ((GameComplete % 4 == 0) && (saveme != 0))
        {
            string savedState = story.state.ToJson();
            PlayerPrefs.SetString("inkSaveState_stefanovaigra", savedState);
                      if (saveme==2)
                      {
                          PlayerPrefs.SetString("name", (string)story.variablesState["name"]);
                          PlayerPrefs.SetString("gender", (string)story.variablesState["gender"]);
            }
                  Debug.Log("saveme je:" + saveme + " predefinisano pitanje na ovom mestu je: " + predefinisana_pitanja_redosled[saveme] + "         vrednost tog polja je " + (int)story.variablesState[predefinisana_pitanja_redosled[saveme]]);
                  PlayerPrefs.SetInt("temp" + saveme, (int)story.variablesState[predefinisana_pitanja_redosled[saveme]]);
            PlayerPrefs.SetInt("continue", (int)story.variablesState[predefinisana_pitanja_redosled[saveme]]);

            PlayerPrefs.SetInt("No_of_death", (int)story.variablesState["No_of_death"]); 
        }
    }

        IEnumerator OnAdvanceStory () {

        
        if (story.canContinue) {
			ChoiceGroupView choiceView = null;
			ChevronButtonView chevronView = null;
			while(story.canContinue) {
				string content = story.Continue().Trim();
				ContentView contentView = CreateContentView(content);
				if(!story.canContinue) {
					if(story.currentChoices.Count > 0) {
						choiceView = CreateChoiceGroupView(story.currentChoices);
					} else {
						chevronView = CreateChevronView();
					}

				}
				while(contentView.textTyper.typing)
					yield return null;
				if(story.canContinue)
					yield return new WaitForSeconds(Mathf.Min(0.8f, contentView.textTyper.targetText.Length * 0.01f));
			}
			if(story.currentChoices.Count > 0) {
				yield return new WaitForSeconds(0.01f);
				choiceView.RenderChoices();
				yield return new WaitForSeconds(0.01f);
			} else {
				chevronView.Render();
				yield return new WaitForSeconds(0.2f);
			}
		} else {
			yield return new WaitForSeconds(0.2f);
			CreateChevronView();
		}
	}

	public void ChooseChoiceIndex (int choiceIndex) {
		DestroyEmpties();
		story.ChooseChoiceIndex(choiceIndex);
		hasMadeAChoice = true;
		StartCoroutine(OnAdvanceStory());
	}

	private void DestroyEmpties () {
		EmptyView[] emptyViews = contentParent.GetComponentsInChildren<EmptyView>();
		for (int i = emptyViews.Length-1; i >= 0; i--) {
			Destroy(emptyViews[i].gameObject);
		}
	}

	public void ClickChevronButton () {
		Complete();
	}

	ContentView CreateContentView (string content) {
		ContentView contentView = Instantiate(contentViewPrefab);
		contentView.transform.SetParent(contentParent, false);
		contentView.LayoutText(content);
		return contentView;
	}

	ChoiceGroupView CreateChoiceGroupView (IList<Choice> choices) {
		ChoiceGroupView choiceGroupView = Instantiate(choiceGroupViewPrefab);
		choiceGroupView.transform.SetParent(choiceContainerView.transform, false);
		choiceGroupView.LayoutChoices(choices);
		CreateEmptyView(choiceGroupView.rectTransform.sizeDelta.y);
		return choiceGroupView;
	}

	ChevronButtonView CreateChevronView () {
		ChevronButtonView chevronView = Instantiate(chevronViewPrefab);
		chevronView.transform.SetParent(choiceContainerView.transform, false);
		CreateEmptyView(chevronView.rectTransform.sizeDelta.y);
		return chevronView;
	}

	EmptyView CreateEmptyView (float height) {
		EmptyView emptyView = Instantiate(emptyViewPrefab);
		emptyView.transform.SetParent(contentParent, false);
		emptyView.layoutElement.preferredHeight = height;
		return emptyView;
	}
}