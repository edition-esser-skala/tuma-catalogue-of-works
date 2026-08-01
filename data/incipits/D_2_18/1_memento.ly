\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Allegro"
    r4 e'  c a
    d c h2
    c4 r8 c h2~
    h4 c h2
    a8 e' f( gis,) a4 r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Allegro"
    r4 a' a e
    f e f e
    r8 e a4~ a2
    gis4 a2 \hA gis4
    a f8( h,) c4 r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r4 e'^\tutti c a
    d c8 c h2
    c4 r8 c h h h h
    h4 c8 c h2
    a4 r r2
  }
}

SopranoLyrics = \lyricmode {
  Me -- men -- to
  Do -- mi -- ne Da --
  vid et o -- mnis man -- sue --
  tu -- di -- nis e --
  ius.
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r4 a'^\tutti a e
    f e8 e f4 e
    r8 e a4. a8 a a
    gis4 a8 a a4 gis
    a r r2
  }
}

AltoLyrics = \lyricmode {
  Me -- men -- to
  Do -- mi -- ne Da -- vid
  et o -- mnis man -- sue --
  tu -- di -- nis e -- _
  ius.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r4 c^\tutti e c
    a c8 c d2
    c4 r8 e d d d d
    d4 c8 d e2
    e4 r8 h^\solo c e d c16[ h]
  }
}

TenoreLyrics = \lyricmode {
  Me -- men -- to
  Do -- mi -- ne Da --
  vid et o -- mnis man -- sue --
  tu -- di -- nis e --
  ius. Si -- cut iu -- ra -- vit
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r4 a'^\tutti a a
    a a8 a a4 gis
    a r8 a, d e f d
    e4 a,8 a e'2
    a,4 r r8 a'4^\solo gis8
  }
}

BassoLyrics = \lyricmode {
  Me -- men -- to
  Do -- mi -- ne Da -- _
  vid et o -- mnis man -- sue --
  tu -- di -- nis e --
  ius. Vo -- tum
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Allegro"
    r4 a'~-\tutti a2
    a~ a4 gis
    a r8 a, d e f d
    e4 a, e' e,
    a d8-\solo e a, a'4 gis8
  }
}

BassFigures = \figuremode {
  r1
  <6 4>4 <5 3> <4 2> <6 5!>
  r2 <6 5>8 <\t \t> <4 3> <\t \t>
  <_+>2 <4>4 <_+>
  r <6 5>8 <_+>4. <2>8 <6>
}

\score {
  <<
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
        \set Staff.instrumentName = \markup \center-column { "S" "cnto" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "B" "fag" }
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
