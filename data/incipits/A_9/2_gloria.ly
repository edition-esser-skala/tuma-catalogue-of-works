\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r4 r8 fis g[ h16 a] g8 a
    h d16 d d8 cis16 cis d8 d4 d8
    c8[ d] e f h, c h8. h16
    a4 r r2
    r4 d8 c16 h c8 d16 c h4
  }
}

SopranoLyrics = \lyricmode {
  Lau -- da -- _ mus
  te, be -- ne -- di -- ci -- mus te, ad -- o --
  ra -- mus, glo -- ri -- fi -- ca -- mus
  te,
  Fi -- li -- us, Fi -- li -- us "Pa -"
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1
    e4 e8 e fis a16 a a8 gis
    a a a a gis a16 a a8[ gis]
    a4 r r g8 g16 g
    g8 fis fis gis a4. gis8
  }
}

AltoLyrics = \lyricmode {
  Gra -- ti -- as a -- gi -- mus ti -- bi %2
  pro -- pter ma -- gnam glo -- ri -- am tu --
  am, Do -- mi -- ne
  De -- us, A -- gnus De -- \hy
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    h8 g a h e, h' c8. c16
    h4 h8 a a a h4
    a r r2
    r4 a8 a16 a h8 c d c16[ h]
    a8 a16 a h8 d c a r4
  }
}

TenoreLyrics = \lyricmode {
  Et in ter -- ra pax ho -- mi -- ni --
  bus bo -- nae vo -- lun -- ta --
  tis,
  Do -- mi -- ne Fi -- li u -- ni --
  ge -- ni -- te, Je -- su Chri -- ste,
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*2
    r2 e4 e8 e
    a g!16[ fis] e8 fis g g h, c
    d4 h a8 d e8. e16
  }
}

BassoLyrics = \lyricmode {
  Do -- mi -- ne
  De -- us, Rex coe -- le -- stis, De -- us
  Pa -- _ ter o -- mni -- "po -"
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Allegro"
    e4~-\tutti e8 dis e4. fis8
    g fis e a d, c! h e
    a, h c d e4 e,
    a c8 d g,! a h c
    d4 h a8 d e e,
  }
}

BassFigures = \figuremode {
  r4 <4 2>8 <6> <5>4 <6>8 <6 5>
  r <6> <7> <_+>4 <6>8 <7> <_+>
  r4. <_!>8 <5 _+> <6 4> <5 \t> <\t _+>
  r4 <6>8 <_+>2 <6>8
  <4> <3> <5> <6\\>4 <6 5>8 <4> <_+>
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
