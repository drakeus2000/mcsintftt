using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class Send_results : MonoBehaviour
{

    public Text mytext;
    public Button submit_button;
    string unlocked;
    string enkodovan_name;
    string email;
    int q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20, q21, q22, q23, q24;
    int no_death;
    string culture;
    public GameObject zvezde;

 //   public GameObject allthefunctions;


    // Use this for initialization
    void Start()
    {
        submit_button = GetComponent<Button>();
        submit_button.onClick.AddListener(ProcessText);
        zvezde.SetActive(true);

    }
    void getValues() {
        q1 = PlayerPrefs.GetInt("M1");
        q2 = PlayerPrefs.GetInt("M2");
        q3 = PlayerPrefs.GetInt("M3");
        q4 = PlayerPrefs.GetInt("M4");
        q5 = PlayerPrefs.GetInt("M5");
        q6 = PlayerPrefs.GetInt("M6");
        q7 = PlayerPrefs.GetInt("M7");
        q8 = PlayerPrefs.GetInt("M8");
        q9 = PlayerPrefs.GetInt("M9");
        q10 = PlayerPrefs.GetInt("M10");
        q11= PlayerPrefs.GetInt("M11");
        q12 = PlayerPrefs.GetInt("M12");
        q13 = PlayerPrefs.GetInt("M13");
        q14 = PlayerPrefs.GetInt("M14");
        q15 = PlayerPrefs.GetInt("M15");
        q16 = PlayerPrefs.GetInt("M16");
        q17 = PlayerPrefs.GetInt("M17");
        q18 = PlayerPrefs.GetInt("M18");
        q19 = PlayerPrefs.GetInt("M19");
        q20 = PlayerPrefs.GetInt("M20");
        q21 = PlayerPrefs.GetInt("M21");
        q22 = PlayerPrefs.GetInt("M22");
        q23 = PlayerPrefs.GetInt("M23");
        q24 = PlayerPrefs.GetInt("M24");
        no_death = PlayerPrefs.GetInt("No_of_death");

   
    }
    void ProcessText()
    {
        Debug.Log ("Ovo dugme je poslalo rezultate doma.");
        getValues();
        submit_button.enabled = false;
        email = PlayerPrefs.GetString("email");
        culture = PlayerPrefs.GetString("culture");
        enkodovan_name = WWW.EscapeURL(email);
        StartCoroutine(getunlockedvalue());
        
    }

    IEnumerator getunlockedvalue()
    {
        WWW poslato = new WWW("http://mcsintftt.ofai.at:6789/submit_results.php" + "?email=" + enkodovan_name + "&q1=" + q1 + "&q2=" + q2 + "&q3=" + q3 + "&q4=" + q4 + "&q5=" + q5 + "&q6=" + q6 + "&q7=" + q7 + "&q8=" + q8 + "&q9=" + q9 + "&q10=" + q10 + "&q11=" + q11 + "&q12=" + q12 + "&q13=" + q13 + "&q14=" + q14 + "&q15=" + q15 + "&q16=" + q16 + "&q17=" + q17 + "&q18=" + q18 + "&q19=" + q19 + "&q20=" + q20 + "&q21=" + q21 + "&q22=" + q22 + "&q23=" + q23 + "&q24=" + q24 + "&nodeath=" + no_death + "&culture=" + culture); //GET data is sent via the URL

        while (!poslato.isDone && string.IsNullOrEmpty(poslato.error))
        {
            yield return poslato;
            unlocked = poslato.text;
  //        unlocked.Replace("/html", "").Replace("/body", "").Replace("html", "").Replace("body", "");
            Debug.Log(unlocked);
            //          if (string.Equals(unlocked, "true"))
            if (unlocked == "true")
            {
  //              Debug.Log("setstring je izvrsen");
                PlayerPrefs.SetString("sent_results", unlocked);
                Application.LoadLevel("mainmenu");
                // add here the trait to say that the results have been submited and player gets more ending.
            }
            Debug.Log("ovo je unlocked        " + unlocked + "a ovo je sent_results    " + PlayerPrefs.GetString("sent_results"));
        }

        if (unlocked == null)
            Debug.LogWarning(poslato.error);
    }
    // Update is called once per frame
    void Update()
    {

    }
}
