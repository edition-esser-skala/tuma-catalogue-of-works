\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*5
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*5
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    r4 r8 fis'\p g g, r4
    r r8 g' fis d, r4
    r r8 d' h e, r h''
    c a, r c' h g, r e'
    d d, r4 r r8 h''
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    r4 r8 h'\p e e, r4
    r r8 cis' d d, r4
    r r8 a' gis e r e'
    a a, r a' g! g, r a
    a d, r4 r r8 e'
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r2 r8 g'^\solo g a
    h d16 d d8 cis16 cis d8 d16 d d4
    c8 d e f h,[ c] h8. h16
    a4 r r2
    r4 d8 c16 h c8 d16 c h4
  }
}

SopranoLyrics = \lyricmode {
  Lau -- da -- mus
  te, be -- ne -- di -- ci -- mus te, ad -- o -- ra --
  mus, glo -- ri -- fi -- ca -- _ mus
  te,
  Fi -- li -- us, Fi -- li -- us "Pa -"
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1
    r4 e8^\solo e16 e fis8 a16 a a8. gis16
    a8 a a a gis a16 a a8[ gis]
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
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    h8^\solo g a h e, h' c8. c16
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
  ge -- ni -- te, Je -- su Chri -- ste.
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    r2 e4^\solo e8 e
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
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    e4-\solo e8 dis e4. fis8
    g fis e a d, c h e
    a, h c d e4 e,
    a c8 d g,! a h c
    d4 h a8 d e e,
  }
}

BassFigures = \figuremode {
  r4 <2>8 <6> <5>4 <6>8 <6>
  r <6> <7> <_+>4 <6>8 <7> <_+>
  r4. <_!>8 <5 _+> <6 4> <5 \t> <\t _+>
  r4 <6>8 <_+> r4 <6>8 <6 5>
  <4> <3> <5> <6\\>4. <4>8 <_+>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
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
