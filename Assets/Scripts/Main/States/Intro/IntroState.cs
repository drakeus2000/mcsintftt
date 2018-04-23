using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class IntroState : MainState {

	public CanvasGroup group;
	public IntroTypedText introtext;
	public IntroTypedText Hofstedegame;

	public override void Enter () {
		group.gameObject.SetActive(true);
		group.alpha = 1;
		group.interactable = true;
		group.blocksRaycasts = true;
		introtext.gameObject.SetActive(false);
		Hofstedegame.gameObject.SetActive(false);
		group.gameObject.SetActive(true);
		base.Enter ();
	}

	public override void Exit () {
		group.interactable = false;
		group.blocksRaycasts = false;
//		group.gameObject.SetActive(false);
		base.Exit ();
	}

	public void PlayLongIntro () {
		StartCoroutine(DoLongIntro());
	}

	public void PlayShortIntro () {
		StartCoroutine(DoShortIntro());
	}

	// Type Inkle, type game title, and fade in from black
	private IEnumerator DoLongIntro () {
		yield return new WaitForSeconds(0.1f);

		introtext.gameObject.SetActive(true);
		while(introtext.typedText.typing) {
			yield return null;
		}
		yield return new WaitForSeconds(0.1f);
		introtext.gameObject.SetActive(false);

		yield return new WaitForSeconds(0.1f);



		Hofstedegame.gameObject.SetActive(true);
		while(Hofstedegame.typedText.typing) {
			yield return null;
		}
		AudioClipDatabase.Instance.PlayHorrorSting();
		yield return new WaitForSeconds(0.2f);
		Hofstedegame.gameObject.SetActive(false);

		yield return new WaitForSeconds(0.2f);
		yield return StartCoroutine(DoShortIntro());
	}

	// Just fade in from black
	private IEnumerator DoShortIntro () {
		yield return new WaitForSeconds(0.5f);
		AudioClipDatabase.Instance.PlayAttachingPaperSound();
		yield return new WaitForSeconds(1);

		FloatTween opacityTween = new FloatTween();
		opacityTween.Tween(1, 0, 5);
		while(opacityTween.tweening) {
			opacityTween.Loop();
			group.alpha = opacityTween.currentValue;
			if(Main.Instance.currentState == this && opacityTween.tweenTimer.GetNormalizedTime() > 0.45f) {
				Complete();
			}
			yield return null;
		}
	}
}

