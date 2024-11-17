/// Background colors
enum BackgroundColor {
  inherit,
  current,
  transparent,
  black,
  white,
  slate_50,
  slate_100,
  slate_200,
  slate_300,
  slate_400,
  slate_500,
  slate_600,
  slate_700,
  slate_800,
  slate_900,
  slate_950,
  gray_50,
  gray_100,
  gray_200,
  gray_300,
  gray_400,
  gray_500,
  gray_600,
  gray_700,
  gray_800,
  gray_900,
  gray_950,
  zinc_50,
  zinc_100,
  zinc_200,
  zinc_300,
  zinc_400,
  zinc_500,
  zinc_600,
  zinc_700,
  zinc_800,
  zinc_900,
  zinc_950,
  neutral_50,
  neutral_100,
  neutral_200,
  neutral_300,
  neutral_400,
  neutral_500,
  neutral_600,
  neutral_700,
  neutral_800,
  neutral_900,
  neutral_950,
  stone_50,
  stone_100,
  stone_200,
  stone_300,
  stone_400,
  stone_500,
  stone_600,
  stone_700,
  stone_800,
  stone_900,
  stone_950,
  red_50,
  red_100,
  red_200,
  red_300,
  red_400,
  red_500,
  red_600,
  red_700,
  red_800,
  red_900,
  red_950,
  orange_50,
  orange_100,
  orange_200,
  orange_300,
  orange_400,
  orange_500,
  orange_600,
  orange_700,
  orange_800,
  orange_900,
  orange_950,
  amber_50,
  amber_100,
  amber_200,
  amber_300,
  amber_400,
  amber_500,
  amber_600,
  amber_700,
  amber_800,
  amber_900,
  amber_950,
  yellow_50,
  yellow_100,
  yellow_200,
  yellow_300,
  yellow_400,
  yellow_500,
  yellow_600,
  yellow_700,
  yellow_800,
  yellow_900,
  yellow_950,
  lime_50,
  lime_100,
  lime_200,
  lime_300,
  lime_400,
  lime_500,
  lime_600,
  lime_700,
  lime_800,
  lime_900,
  lime_950,
  green_50,
  green_100,
  green_200,
  green_300,
  green_400,
  green_500,
  green_600,
  green_700,
  green_800,
  green_900,
  green_950,
  emerald_50,
  emerald_100,
  emerald_200,
  emerald_300,
  emerald_400,
  emerald_500,
  emerald_600,
  emerald_700,
  emerald_800,
  emerald_900,
  emerald_950,
  teal_50,
  teal_100,
  teal_200,
  teal_300,
  teal_400,
  teal_500,
  teal_600,
  teal_700,
  teal_800,
  teal_900,
  teal_950,
  cyan_50,
  cyan_100,
  cyan_200,
  cyan_300,
  cyan_400,
  cyan_500,
  cyan_600,
  cyan_700,
  cyan_800,
  cyan_900,
  cyan_950,
  sky_50,
  sky_100,
  sky_200,
  sky_300,
  sky_400,
  sky_500,
  sky_600,
  sky_700,
  sky_800,
  sky_900,
  sky_950,
  blue_50,
  blue_100,
  blue_200,
  blue_300,
  blue_400,
  blue_500,
  blue_600,
  blue_700,
  blue_800,
  blue_900,
  blue_950,
  indigo_50,
  indigo_100,
  indigo_200,
  indigo_300,
  indigo_400,
  indigo_500,
  indigo_600,
  indigo_700,
  indigo_800,
  indigo_900,
  indigo_950,
  violet_50,
  violet_100,
  violet_200,
  violet_300,
  violet_400,
  violet_500,
  violet_600,
  violet_700,
  violet_800,
  violet_900,
  violet_950,
  purple_50,
  purple_100,
  purple_200,
  purple_300,
  purple_400,
  purple_500,
  purple_600,
  purple_700,
  purple_800,
  purple_900,
  purple_950,
  fuchsia_50,
  fuchsia_100,
  fuchsia_200,
  fuchsia_300,
  fuchsia_400,
  fuchsia_500,
  fuchsia_600,
  fuchsia_700,
  fuchsia_800,
  fuchsia_900,
  fuchsia_950,
  pink_50,
  pink_100,
  pink_200,
  pink_300,
  pink_400,
  pink_500,
  pink_600,
  pink_700,
  pink_800,
  pink_900,
  pink_950,
  rose_50,
  rose_100,
  rose_200,
  rose_300,
  rose_400,
  rose_500,
  rose_600,
  rose_700,
  rose_800,
  rose_900,
  rose_950;

  String get className {
    switch (this) {
      case BackgroundColor.inherit:
        return 'bg-inherit';
      case BackgroundColor.current:
        return 'bg-current';
      case BackgroundColor.transparent:
        return 'bg-transparent';
      case BackgroundColor.black:
        return 'bg-black';
      case BackgroundColor.white:
        return 'bg-white';
      case BackgroundColor.slate_50:
        return 'bg-slate-50';
      case BackgroundColor.slate_100:
        return 'bg-slate-100';
      case BackgroundColor.slate_200:
        return 'bg-slate-200';
      case BackgroundColor.slate_300:
        return 'bg-slate-300';
      case BackgroundColor.slate_400:
        return 'bg-slate-400';
      case BackgroundColor.slate_500:
        return 'bg-slate-500';
      case BackgroundColor.slate_600:
        return 'bg-slate-600';
      case BackgroundColor.slate_700:
        return 'bg-slate-700';
      case BackgroundColor.slate_800:
        return 'bg-slate-800';
      case BackgroundColor.slate_900:
        return 'bg-slate-900';
      case BackgroundColor.slate_950:
        return 'bg-slate-950';
      case BackgroundColor.gray_50:
        return 'bg-gray-50';
      case BackgroundColor.gray_100:
        return 'bg-gray-100';
      case BackgroundColor.gray_200:
        return 'bg-gray-200';
      case BackgroundColor.gray_300:
        return 'bg-gray-300';
      case BackgroundColor.gray_400:
        return 'bg-gray-400';
      case BackgroundColor.gray_500:
        return 'bg-gray-500';
      case BackgroundColor.gray_600:
        return 'bg-gray-600';
      case BackgroundColor.gray_700:
        return 'bg-gray-700';
      case BackgroundColor.gray_800:
        return 'bg-gray-800';
      case BackgroundColor.gray_900:
        return 'bg-gray-900';
      case BackgroundColor.gray_950:
        return 'bg-gray-950';
      case BackgroundColor.zinc_50:
        return 'bg-zinc-50';
      case BackgroundColor.zinc_100:
        return 'bg-zinc-100';
      case BackgroundColor.zinc_200:
        return 'bg-zinc-200';
      case BackgroundColor.zinc_300:
        return 'bg-zinc-300';
      case BackgroundColor.zinc_400:
        return 'bg-zinc-400';
      case BackgroundColor.zinc_500:
        return 'bg-zinc-500';
      case BackgroundColor.zinc_600:
        return 'bg-zinc-600';
      case BackgroundColor.zinc_700:
        return 'bg-zinc-700';
      case BackgroundColor.zinc_800:
        return 'bg-zinc-800';
      case BackgroundColor.zinc_900:
        return 'bg-zinc-900';
      case BackgroundColor.zinc_950:
        return 'bg-zinc-950';
      case BackgroundColor.neutral_50:
        return 'bg-neutral-50';
      case BackgroundColor.neutral_100:
        return 'bg-neutral-100';
      case BackgroundColor.neutral_200:
        return 'bg-neutral-200';
      case BackgroundColor.neutral_300:
        return 'bg-neutral-300';
      case BackgroundColor.neutral_400:
        return 'bg-neutral-400';
      case BackgroundColor.neutral_500:
        return 'bg-neutral-500';
      case BackgroundColor.neutral_600:
        return 'bg-neutral-600';
      case BackgroundColor.neutral_700:
        return 'bg-neutral-700';
      case BackgroundColor.neutral_800:
        return 'bg-neutral-800';
      case BackgroundColor.neutral_900:
        return 'bg-neutral-900';
      case BackgroundColor.neutral_950:
        return 'bg-neutral-950';
      case BackgroundColor.stone_50:
        return 'bg-stone-50';
      case BackgroundColor.stone_100:
        return 'bg-stone-100';
      case BackgroundColor.stone_200:
        return 'bg-stone-200';
      case BackgroundColor.stone_300:
        return 'bg-stone-300';
      case BackgroundColor.stone_400:
        return 'bg-stone-400';
      case BackgroundColor.stone_500:
        return 'bg-stone-500';
      case BackgroundColor.stone_600:
        return 'bg-stone-600';
      case BackgroundColor.stone_700:
        return 'bg-stone-700';
      case BackgroundColor.stone_800:
        return 'bg-stone-800';
      case BackgroundColor.stone_900:
        return 'bg-stone-900';
      case BackgroundColor.stone_950:
        return 'bg-stone-950';
      case BackgroundColor.red_50:
        return 'bg-red-50';
      case BackgroundColor.red_100:
        return 'bg-red-100';
      case BackgroundColor.red_200:
        return 'bg-red-200';
      case BackgroundColor.red_300:
        return 'bg-red-300';
      case BackgroundColor.red_400:
        return 'bg-red-400';
      case BackgroundColor.red_500:
        return 'bg-red-500';
      case BackgroundColor.red_600:
        return 'bg-red-600';
      case BackgroundColor.red_700:
        return 'bg-red-700';
      case BackgroundColor.red_800:
        return 'bg-red-800';
      case BackgroundColor.red_900:
        return 'bg-red-900';
      case BackgroundColor.red_950:
        return 'bg-red-950';
      case BackgroundColor.orange_50:
        return 'bg-orange-50';
      case BackgroundColor.orange_100:
        return 'bg-orange-100';
      case BackgroundColor.orange_200:
        return 'bg-orange-200';
      case BackgroundColor.orange_300:
        return 'bg-orange-300';
      case BackgroundColor.orange_400:
        return 'bg-orange-400';
      case BackgroundColor.orange_500:
        return 'bg-orange-500';
      case BackgroundColor.orange_600:
        return 'bg-orange-600';
      case BackgroundColor.orange_700:
        return 'bg-orange-700';
      case BackgroundColor.orange_800:
        return 'bg-orange-800';
      case BackgroundColor.orange_900:
        return 'bg-orange-900';
      case BackgroundColor.orange_950:
        return 'bg-orange-950';
      case BackgroundColor.amber_50:
        return 'bg-amber-50';
      case BackgroundColor.amber_100:
        return 'bg-amber-100';
      case BackgroundColor.amber_200:
        return 'bg-amber-200';
      case BackgroundColor.amber_300:
        return 'bg-amber-300';
      case BackgroundColor.amber_400:
        return 'bg-amber-400';
      case BackgroundColor.amber_500:
        return 'bg-amber-500';
      case BackgroundColor.amber_600:
        return 'bg-amber-600';
      case BackgroundColor.amber_700:
        return 'bg-amber-700';
      case BackgroundColor.amber_800:
        return 'bg-amber-800';
      case BackgroundColor.amber_900:
        return 'bg-amber-900';
      case BackgroundColor.amber_950:
        return 'bg-amber-950';
      case BackgroundColor.yellow_50:
        return 'bg-yellow-50';
      case BackgroundColor.yellow_100:
        return 'bg-yellow-100';
      case BackgroundColor.yellow_200:
        return 'bg-yellow-200';
      case BackgroundColor.yellow_300:
        return 'bg-yellow-300';
      case BackgroundColor.yellow_400:
        return 'bg-yellow-400';
      case BackgroundColor.yellow_500:
        return 'bg-yellow-500';
      case BackgroundColor.yellow_600:
        return 'bg-yellow-600';
      case BackgroundColor.yellow_700:
        return 'bg-yellow-700';
      case BackgroundColor.yellow_800:
        return 'bg-yellow-800';
      case BackgroundColor.yellow_900:
        return 'bg-yellow-900';
      case BackgroundColor.yellow_950:
        return 'bg-yellow-950';
      case BackgroundColor.lime_50:
        return 'bg-lime-50';
      case BackgroundColor.lime_100:
        return 'bg-lime-100';
      case BackgroundColor.lime_200:
        return 'bg-lime-200';
      case BackgroundColor.lime_300:
        return 'bg-lime-300';
      case BackgroundColor.lime_400:
        return 'bg-lime-400';
      case BackgroundColor.lime_500:
        return 'bg-lime-500';
      case BackgroundColor.lime_600:
        return 'bg-lime-600';
      case BackgroundColor.lime_700:
        return 'bg-lime-700';
      case BackgroundColor.lime_800:
        return 'bg-lime-800';
      case BackgroundColor.lime_900:
        return 'bg-lime-900';
      case BackgroundColor.lime_950:
        return 'bg-lime-950';
      case BackgroundColor.green_50:
        return 'bg-green-50';
      case BackgroundColor.green_100:
        return 'bg-green-100';
      case BackgroundColor.green_200:
        return 'bg-green-200';
      case BackgroundColor.green_300:
        return 'bg-green-300';
      case BackgroundColor.green_400:
        return 'bg-green-400';
      case BackgroundColor.green_500:
        return 'bg-green-500';
      case BackgroundColor.green_600:
        return 'bg-green-600';
      case BackgroundColor.green_700:
        return 'bg-green-700';
      case BackgroundColor.green_800:
        return 'bg-green-800';
      case BackgroundColor.green_900:
        return 'bg-green-900';
      case BackgroundColor.green_950:
        return 'bg-green-950';
      case BackgroundColor.emerald_50:
        return 'bg-emerald-50';
      case BackgroundColor.emerald_100:
        return 'bg-emerald-100';
      case BackgroundColor.emerald_200:
        return 'bg-emerald-200';
      case BackgroundColor.emerald_300:
        return 'bg-emerald-300';
      case BackgroundColor.emerald_400:
        return 'bg-emerald-400';
      case BackgroundColor.emerald_500:
        return 'bg-emerald-500';
      case BackgroundColor.emerald_600:
        return 'bg-emerald-600';
      case BackgroundColor.emerald_700:
        return 'bg-emerald-700';
      case BackgroundColor.emerald_800:
        return 'bg-emerald-800';
      case BackgroundColor.emerald_900:
        return 'bg-emerald-900';
      case BackgroundColor.emerald_950:
        return 'bg-emerald-950';
      case BackgroundColor.teal_50:
        return 'bg-teal-50';
      case BackgroundColor.teal_100:
        return 'bg-teal-100';
      case BackgroundColor.teal_200:
        return 'bg-teal-200';
      case BackgroundColor.teal_300:
        return 'bg-teal-300';
      case BackgroundColor.teal_400:
        return 'bg-teal-400';
      case BackgroundColor.teal_500:
        return 'bg-teal-500';
      case BackgroundColor.teal_600:
        return 'bg-teal-600';
      case BackgroundColor.teal_700:
        return 'bg-teal-700';
      case BackgroundColor.teal_800:
        return 'bg-teal-800';
      case BackgroundColor.teal_900:
        return 'bg-teal-900';
      case BackgroundColor.teal_950:
        return 'bg-teal-950';
      case BackgroundColor.cyan_50:
        return 'bg-cyan-50';
      case BackgroundColor.cyan_100:
        return 'bg-cyan-100';
      case BackgroundColor.cyan_200:
        return 'bg-cyan-200';
      case BackgroundColor.cyan_300:
        return 'bg-cyan-300';
      case BackgroundColor.cyan_400:
        return 'bg-cyan-400';
      case BackgroundColor.cyan_500:
        return 'bg-cyan-500';
      case BackgroundColor.cyan_600:
        return 'bg-cyan-600';
      case BackgroundColor.cyan_700:
        return 'bg-cyan-700';
      case BackgroundColor.cyan_800:
        return 'bg-cyan-800';
      case BackgroundColor.cyan_900:
        return 'bg-cyan-900';
      case BackgroundColor.cyan_950:
        return 'bg-cyan-950';
      case BackgroundColor.sky_50:
        return 'bg-sky-50';
      case BackgroundColor.sky_100:
        return 'bg-sky-100';
      case BackgroundColor.sky_200:
        return 'bg-sky-200';
      case BackgroundColor.sky_300:
        return 'bg-sky-300';
      case BackgroundColor.sky_400:
        return 'bg-sky-400';
      case BackgroundColor.sky_500:
        return 'bg-sky-500';
      case BackgroundColor.sky_600:
        return 'bg-sky-600';
      case BackgroundColor.sky_700:
        return 'bg-sky-700';
      case BackgroundColor.sky_800:
        return 'bg-sky-800';
      case BackgroundColor.sky_900:
        return 'bg-sky-900';
      case BackgroundColor.sky_950:
        return 'bg-sky-950';
      case BackgroundColor.blue_50:
        return 'bg-blue-50';
      case BackgroundColor.blue_100:
        return 'bg-blue-100';
      case BackgroundColor.blue_200:
        return 'bg-blue-200';
      case BackgroundColor.blue_300:
        return 'bg-blue-300';
      case BackgroundColor.blue_400:
        return 'bg-blue-400';
      case BackgroundColor.blue_500:
        return 'bg-blue-500';
      case BackgroundColor.blue_600:
        return 'bg-blue-600';
      case BackgroundColor.blue_700:
        return 'bg-blue-700';
      case BackgroundColor.blue_800:
        return 'bg-blue-800';
      case BackgroundColor.blue_900:
        return 'bg-blue-900';
      case BackgroundColor.blue_950:
        return 'bg-blue-950';
      case BackgroundColor.indigo_50:
        return 'bg-indigo-50';
      case BackgroundColor.indigo_100:
        return 'bg-indigo-100';
      case BackgroundColor.indigo_200:
        return 'bg-indigo-200';
      case BackgroundColor.indigo_300:
        return 'bg-indigo-300';
      case BackgroundColor.indigo_400:
        return 'bg-indigo-400';
      case BackgroundColor.indigo_500:
        return 'bg-indigo-500';
      case BackgroundColor.indigo_600:
        return 'bg-indigo-600';
      case BackgroundColor.indigo_700:
        return 'bg-indigo-700';
      case BackgroundColor.indigo_800:
        return 'bg-indigo-800';
      case BackgroundColor.indigo_900:
        return 'bg-indigo-900';
      case BackgroundColor.indigo_950:
        return 'bg-indigo-950';
      case BackgroundColor.violet_50:
        return 'bg-violet-50';
      case BackgroundColor.violet_100:
        return 'bg-violet-100';
      case BackgroundColor.violet_200:
        return 'bg-violet-200';
      case BackgroundColor.violet_300:
        return 'bg-violet-300';
      case BackgroundColor.violet_400:
        return 'bg-violet-400';
      case BackgroundColor.violet_500:
        return 'bg-violet-500';
      case BackgroundColor.violet_600:
        return 'bg-violet-600';
      case BackgroundColor.violet_700:
        return 'bg-violet-700';
      case BackgroundColor.violet_800:
        return 'bg-violet-800';
      case BackgroundColor.violet_900:
        return 'bg-violet-900';
      case BackgroundColor.violet_950:
        return 'bg-violet-950';
      case BackgroundColor.purple_50:
        return 'bg-purple-50';
      case BackgroundColor.purple_100:
        return 'bg-purple-100';
      case BackgroundColor.purple_200:
        return 'bg-purple-200';
      case BackgroundColor.purple_300:
        return 'bg-purple-300';
      case BackgroundColor.purple_400:
        return 'bg-purple-400';
      case BackgroundColor.purple_500:
        return 'bg-purple-500';
      case BackgroundColor.purple_600:
        return 'bg-purple-600';
      case BackgroundColor.purple_700:
        return 'bg-purple-700';
      case BackgroundColor.purple_800:
        return 'bg-purple-800';
      case BackgroundColor.purple_900:
        return 'bg-purple-900';
      case BackgroundColor.purple_950:
        return 'bg-purple-950';
      case BackgroundColor.fuchsia_50:
        return 'bg-fuchsia-50';
      case BackgroundColor.fuchsia_100:
        return 'bg-fuchsia-100';
      case BackgroundColor.fuchsia_200:
        return 'bg-fuchsia-200';
      case BackgroundColor.fuchsia_300:
        return 'bg-fuchsia-300';
      case BackgroundColor.fuchsia_400:
        return 'bg-fuchsia-400';
      case BackgroundColor.fuchsia_500:
        return 'bg-fuchsia-500';
      case BackgroundColor.fuchsia_600:
        return 'bg-fuchsia-600';
      case BackgroundColor.fuchsia_700:
        return 'bg-fuchsia-700';
      case BackgroundColor.fuchsia_800:
        return 'bg-fuchsia-800';
      case BackgroundColor.fuchsia_900:
        return 'bg-fuchsia-900';
      case BackgroundColor.fuchsia_950:
        return 'bg-fuchsia-950';
      case BackgroundColor.pink_50:
        return 'bg-pink-50';
      case BackgroundColor.pink_100:
        return 'bg-pink-100';
      case BackgroundColor.pink_200:
        return 'bg-pink-200';
      case BackgroundColor.pink_300:
        return 'bg-pink-300';
      case BackgroundColor.pink_400:
        return 'bg-pink-400';
      case BackgroundColor.pink_500:
        return 'bg-pink-500';
      case BackgroundColor.pink_600:
        return 'bg-pink-600';
      case BackgroundColor.pink_700:
        return 'bg-pink-700';
      case BackgroundColor.pink_800:
        return 'bg-pink-800';
      case BackgroundColor.pink_900:
        return 'bg-pink-900';
      case BackgroundColor.pink_950:
        return 'bg-pink-950';
      case BackgroundColor.rose_50:
        return 'bg-rose-50';
      case BackgroundColor.rose_100:
        return 'bg-rose-100';
      case BackgroundColor.rose_200:
        return 'bg-rose-200';
      case BackgroundColor.rose_300:
        return 'bg-rose-300';
      case BackgroundColor.rose_400:
        return 'bg-rose-400';
      case BackgroundColor.rose_500:
        return 'bg-rose-500';
      case BackgroundColor.rose_600:
        return 'bg-rose-600';
      case BackgroundColor.rose_700:
        return 'bg-rose-700';
      case BackgroundColor.rose_800:
        return 'bg-rose-800';
      case BackgroundColor.rose_900:
        return 'bg-rose-900';
      case BackgroundColor.rose_950:
        return 'bg-rose-950';
    }
  }
}
