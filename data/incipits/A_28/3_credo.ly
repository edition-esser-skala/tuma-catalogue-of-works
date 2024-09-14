\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \tempoMarkup "no tempo"
    h'4. h8 a a g4
    fis8 h g c h16 a g8 g fis
    g h e4 e8 e dis4
    e c8. g16 a8 a g g
    g g e e' d4 c8 h
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \tempoMarkup "no tempo"
    g'4 g8 g fis fis e8. e16
    d8 g4 g8 g g e d
    d4 g a g8 fis
    g8. g16 g8 g f f d c16 d
    e8 a, a'4 a gis
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \tempoMarkup "no tempo"
    d4 d8 d d4 h
    h8. d16 e4 d8 e a,4
    h h8 h16 h cis4 dis
    h8 h c8. c16 c4 h8 h
    c4. c8 d4 e
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "no tempo"
    g4 r8 g d'4 r8 e
    h'4 r8 c, g' e c d
    g,4 r8 g' fis4 r8 h
    e,4 r8 e d4 r8 g
    c,4 r8 c h4 r8 e
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "no tempo"
    r8 d' g4 r8 fis e4
    r8 d c4 r8 h a4
    g8 h e4 r8 a dis,4
    r8 g, c4 r8 f h,4
    r8 e, a4 r8 d gis,4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "no tempo"
    r8 d' g4 r8 fis e4
    r8 d c4 r8 h a4
    g8 h e4 r8 a dis,4
    r8 g, c4 r8 f h,4
    r8 e, a4 r8 d gis,4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "no tempo"
    h'4.^\tutti h8 a a16 a g4
    fis8 h g c h16 a g8 g fis
    g h e4 e8 e dis4
    e c8. g16 a8 a g g
    g g e e' d4 c8[ h]
  }
}

SopranoLyrics = \lyricmode {
  Cre -- do De -- um de De --
  o, lu -- men de lu -- mi -- ne, De -- um
  ve -- rum de De -- o ve --
  ro, ge -- ni -- tum non fa -- ctum,
  con -- sub -- stan -- ti -- a -- lem
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "no tempo"
    g'4^\tutti g8 g fis fis e8. e16
    d8 g4 g8 g g e[ d]
    d4 g a g8 fis
    g8. g16 g8 g f f d c16 d
    e8 a, a'4 a gis
  }
}

AltoLyrics = \lyricmode {
  Cre -- do in u -- num Do -- mi --
  num Je -- sum, Je -- sum Chri --
  stum, qui pro -- pter nos
  ho -- mi -- nes et pro -- pter no -- stram sa --
  lu -- tem de -- scen -- \hy
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "no tempo"
    d4^\tutti d8 d d4 h
    h8. d16 e4 d8 e a,4
    h h8 h16 h cis4 dis
    h8 h c8. c16 c4 h8 h
    c4. c8 d4 e4
  }
}

TenoreLyrics = \lyricmode {
  Cre -- do in u -- num
  Do -- mi -- num Je -- sum Chri --
  stum, fi -- li -- um De -- i
  u -- ni -- ge -- ni -- tum, et ex
  Pa -- tre na -- tum
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "no tempo"
    g4^\tutti g8 g d' d e4
    h c g'8 e c[ d]
    g, g' g g fis4 h8 h
    e,4 e d g
    c, c8 c h4 e8 e
  }
}

BassoLyrics = \lyricmode {
  Cre -- do in De -- um, Pa --
  trem o -- mni -- po -- ten --
  tem, fa -- cto -- rem coe -- li et
  ter -- rae, vi -- si --
  bi -- li -- um o -- mni -- um
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "no tempo"
    g4-\tutti r8 g d'4 r8 e
    h'4 r8 c, g' e c d
    g,4 r8 g' fis4 r8 h
    e,4 r8 e d4 r8 g
    c,4 r8 c h4 r8 e
  }
}

BassFigures = \figuremode {
  r1
  r
  r4. <6>8 <7>4. <_+>8
  r4. <6!>8 <7 _!>2
  r4. <6>8 <7>4. <_+>8
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
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
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
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
