\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Grave"
    c'4. c8 d2
    r8 d d d c2
    r cis
    d4. c8 b4. a8
    gis2 r4 a
    a1
    gis\fermata
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Grave"
    g'4. g8 f2
    r8 f f g e2
    r e
    f4 f8 f f2
    e r4 e
    e d8 c d2
    e1\fermata
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Grave" \autoBeamOff
    c'4.^\tutti c8 d2
    r8 d d d c2
    r4 c cis2
    d4. c8 b4. a8
    gis2 r4 a
    a1
    gis\fermata
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e
  e -- le -- i -- son,
  e -- lei --
  son, e -- lei -- _
  son, e --
  lei --
  son.
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Grave" \autoBeamOff
    e4.^\tutti e8 f2
    r8 f f g e2
    r e
    f4 f8 f f2
    e r4 e
    e d8[ c] d2
    e1\fermata
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e
  e -- le -- i -- son,
  e --
  lei -- son, e -- lei --
  son, e --
  lei -- _ _
  son.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Grave" \autoBeamOff
    g4.^\tutti g8 a2
    r8 g g g g2
    r g
    f8[ g] a a d4. c!8
    h!2 r4 c
    c2. h8[ a]
    h1\fermata
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e
  e -- le -- i -- son,
  e --
  lei -- son, e -- lei -- _
  son, e --
  lei -- _
  son.
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Grave" \autoBeamOff
    c4.^\tutti c8 c2
    r8 h h h b2
    r a
    d4 d8 d d2
    d r4 c
    f1
    e\fermata
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e
  e -- le -- i -- son,
  e --
  lei -- son, e -- lei --
  son, e --
  lei --
  son.
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Grave"
    c1
    r8 h h4 b2
    r a
    d1
    d2 r4 c
    f,1
    e\fermata
  }
}

BassFigures = \figuremode {
  r2 <6 4 2>
  r8 <6>4. <4 2>2
  r <7 _+>
  r <8 6->4. <7 5>8
  <4\+ 2>1
  <7 5>2 <6 \t>4 \bassFigureExtendersOn <6 4>8 <6 3> \bassFigureExtendersOff
  <_+>1
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
        \set Staff.instrumentName = "S"
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
