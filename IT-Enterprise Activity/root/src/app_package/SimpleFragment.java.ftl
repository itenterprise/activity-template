package ${packageName};

import android.os.Bundle;
import android.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/**
 * Простой фрагмент
 */
public class ${fragmentClass} extends Fragment {

    private static final String ARG_ITEM_TITLE = "Item_title";
	
	/**
	 * Создание экземпляра фрагмента ${fragmentClass} с параметрами
	 * @param itemTitle Заголовок активного пункта меню
	 * @return Экземпляр фрагмента ${fragmentClass}
	 */
	public static ${fragmentClass} newInstance(String itemTitle) {
		${fragmentClass} fragment = new ${fragmentClass}();
		Bundle args = new Bundle();
		args.putString(ARG_ITEM_TITLE, itemTitle);
		fragment.setArguments(args);
		return fragment;
	}
	
	public ${fragmentClass}() {
		// Required empty public constructor
	}
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
	                         Bundle savedInstanceState) {
		// Inflate the layout for this fragment
		View rootView = inflater.inflate(R.layout.${fragmentLayoutName}, container, false);
		initView(rootView);
		return rootView;
	}
	
	private void initView(View rootView) {
		if (getArguments() == null) {
			return;
		}
		String itemTitle = getArguments().getString(ARG_ITEM_TITLE);
		if (itemTitle == null) {
			itemTitle = "";
		}
		TextView titleTextView = (TextView) rootView.findViewById(R.id.${fragmentLayoutName}_title);
		titleTextView.setText(itemTitle);
	}
}