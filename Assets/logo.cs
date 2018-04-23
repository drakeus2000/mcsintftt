using UnityEngine;
using System.Collections;

public class logo : MonoBehaviour {
    string unlocked;
    string culture;
    public float waitforme;

    // Use this for initialization
    void Start () {
        unlocked = PlayerPrefs.GetString("unlocked");
        culture = PlayerPrefs.GetString("culture");
        StartCoroutine ("DisplayScene");
	}

	// Update is called once per frame
	IEnumerator DisplayScene(){
		yield return new WaitForSeconds (waitforme);
        if (unlocked == "true")
        {
            if (culture == "none")
                Application.LoadLevel("biraj_kulturu");
            Application.LoadLevel("mainmenu");
        }
        else
            Application.LoadLevel("provera_otkljucanosti");
	}
}