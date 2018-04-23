using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class questionaire : MonoBehaviour {

    public GameObject zemlja;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
    public void uzmi_drzavu(string Drzava)
    {
        PlayerPrefs.SetString ("culture", Drzava);
        zemlja.SetActive (false);
        Application.LoadLevel("mainmenu");

    }
}
