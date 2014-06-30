class AppDelegate

  extend IB
  outlet :recipeViewController
  outlet :recipeOverviewViewController
  outlet :recipeStepViewController
  outlet :stepTitle
  outlet :stepDescription

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    recipeViewController.setViewControllers([recipeOverviewViewController],
      :direction => UIPageViewControllerNavigationDirectionForward,
      :animated => true,
      :completion => nil
    )

    stepTitle.text = "Here's a step"
    stepDescription.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel convallis nibh, sit amet dapibus mauris. Fusce cursus placerat lectus, in vehicula tellus venenatis sed. Aliquam porttitor vehicula orci, vel hendrerit nunc varius nec. Vivamus tempus vel nisi sit amet semper. Aliquam ut neque non neque gravida egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus et massa vitae massa posuere vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras purus felis, imperdiet id est non, condimentum auctor metus. Nunc ut metus quis velit feugiat eleifend ullamcorper eu purus. Curabitur erat lectus, posuere at nunc nec, tincidunt condimentum elit. Duis pulvinar odio id massa viverra posuere. Vivamus euismod metus at massa dapibus, interdum placerat urna placerat. Donec vehicula dolor commodo, vehicula dolor eu, interdum mi. Interdum et malesuada fames ac ante ipsum primis in faucibus."

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = recipeViewController
    @window.makeKeyAndVisible

    true
  end

  def startCooking
    recipeViewController.setViewControllers([recipeStepViewController],
      :direction => UIPageViewControllerNavigationDirectionForward,
      :animated => true,
      :completion => nil
    )
  end

end
