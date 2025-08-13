class MyPrivicyPolicyChackBox extends StatelessWidget {
  const MyPrivicyPolicyChackBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              TextSpan(text: MyText.iAgreeTo),
              TextSpan(
                text: MyText.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!
                    .copyWith(
                  color: MyColor.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: MyColor.primary,
                ),
              ),
              TextSpan(text: MyText.and),
              TextSpan(
                text: MyText.termOfUse,
                style: Theme.of(context).textTheme.bodyMedium!
                    .copyWith(
                  color: MyColor.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: MyColor.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}