using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class unlock_screen_script : MonoBehaviour {

    public Text mytext;
    public InputField un, pass;
    public Button Continue_button;
    string username, password;
    string unlocked;
    string enkodovan_name;

    // Use this for initialization
    void Start () {
        Continue_button = GetComponent<Button>();
        mytext = GetComponentInChildren<Text>();
        Continue_button.onClick.AddListener(ProcessText);
        
    }
	void ProcessText()
    {
        mytext.text = "Loging In...";
        Continue_button.enabled = false;
        username = un.text;
        password = pass.text;
        enkodovan_name = WWW.EscapeURL(username);
        if ((username=="1") && (password == "1"))
                Application.LoadLevel("biraj_kulturu");
        Debug.Log("pre funkcije");
        StartCoroutine(Getunlockedvalue());

    }

    IEnumerator Getunlockedvalue()
    {
        Debug.Log("I am here dammit!");
        WWW otkljucano = new WWW("http://mcsintftt.ofai.at:6789/php_check_password.php" + "?email=" + enkodovan_name + "&password=" +    password); //GET data is sent via the URL

        while (!otkljucano.isDone && string.IsNullOrEmpty(otkljucano.error))
        {
            yield return otkljucano;
            unlocked = otkljucano.text;
            Debug.Log(unlocked);
            if (unlocked == "true") { 
            PlayerPrefs.SetString("unlocked", "true");
            PlayerPrefs.SetString("culture", "none");
            PlayerPrefs.SetString("email", username);
                Application.LoadLevel("biraj_kulturu"); // Think about adding a screen that says congratulations, you unlocked the game. Bla Bla...
            }
        }

        if (unlocked == null) 
        Debug.LogWarning(otkljucano.error);
        Continue_button.enabled = true;
    }
    // Update is called once per frame
    void Update () {
		
	}
}
