using UnityEngine;
using System.Collections;

public class SettingsView : MonoBehaviour {

	public void Show () {
		gameObject.SetActive(true);
	}

	public void Hide () {
		gameObject.SetActive(false);
	}

	public void OnClickResumeButton () {
		Main.Instance.paused = false;
	}

	public void OnClickRestartButton () {
		Main.Instance.Restart();
	}

	public void OnClickCreditsButton () {
		Main.Instance.creditsView.Show();
	}

	public void OnClickQuitButton () {
		Main.Instance.Quit();
    }
    public void OnClickShutupButton() { 
        if (AudioListener.pause == false)
    {
        AudioListener.pause = true;
    }
        else if (AudioListener.pause == true)
    {
      AudioListener.pause = false;
        }
    }
}
