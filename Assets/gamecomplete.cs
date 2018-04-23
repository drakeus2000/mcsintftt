using UnityEngine;
using UnityEngine.UI; // This is the call for the new UI, this MUST be in here for this to work.
using System.Collections;
using image = UnityEngine.UI.Image;

public class gamecomplete : MonoBehaviour
{
	float myscore;        // The player's score.
    public GameObject allthefunctions;
    public image progressbar;


    Text jetext;                      // Reference to the Text component.

    void Awake()
    {
        // Set up the reference.
   //     allthefunctions = GameObject.FindGameObjectWithTag("Game");
        jetext = GetComponent<Text>();
        progressbar = GameObject.Find("progressbarimage").GetComponent<Image>();
    }

    void Update()
    {
        myscore = allthefunctions.GetComponent<GameState>().GameComplete;
        // Set the displayed text to be the word "Score" followed by the score value.
        jetext.text = myscore.ToString() + "%";

        progressbar.fillAmount = myscore / 100;
   //     Debug.Log(myscore);
        if (myscore>96)
        {
            this.GetComponent< Text > ().enabled = false;
        }
    }
}