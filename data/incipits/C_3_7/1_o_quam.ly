\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    r4 h'2 h8 e
    c4. h8 ais4 r
    r h2 h8 d!
    h4. a!8 gis4 r
    r a8 a a4 g4
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    r4 g'2 r4
    r g fis r
    r fis2 r4
    r f e r
    r e8 e fis4 g8 e
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    r4 e2 r4
    r e cis r
    r d!2 r4
    r d8 c h4 r
    r c8 a dis4 e8 h
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    r4 e2 r4
    r e e r
    r d!2 r4
    r d d r
    r c h e
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    r4 g''2 h,8 e
    c4 g'8 e fis4~ fis\p
    r fis2\f h,8 d!
    h4. d8 e4~ e\p
    r e\f dis h8 e
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    r4 h'2 h8 e
    c4. h8 ais4~ ais\p
    r h2\f h8 d!
    h4. a!8 gis4~ gis\p
    r a2\f g4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 h'2 h8 e
    c4. h8 ais4 ais\p
    r h2\f h8 d!
    h4. a!8 gis4 gis\p
    r a8\f a a4 g8 g
  }
}

SopranoLyrics = \lyricmode {
  O! o! quam
  sua -- vis, sua -- vis,
  o! o! quam
  sua -- vis, sua -- vis,
  o! quam sua -- vis est,
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 g'2 r4
    r g8 g fis4 fis\p
    r fis2\f r4
    r f8 f e4 e\p
    r e8\f e fis4 g8 e
  }
}

AltoLyrics = \lyricmode {
  O!
  o! quam sua -- vis,
  o!
  o! quam sua -- vis,
  o! quam sua -- vis est,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 e2 r4
    r e8 e cis4 cis\p
    r d!2\f r4
    r d8 c h4 h\p
    r c8\f a dis4 e8 h
  }
}

TenoreLyrics = \lyricmode {
  O!
  o! quam sua -- vis,
  o!
  o! quam sua -- vis,
  o! quam sua -- vis est,
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r4 e2 r4
    r e8 e e4 e\p
    r d!2\f r4
    r d8 d d4 d\p
    r c8\f c h4 e8 e
  }
}

BassoLyrics = \lyricmode {
  O!
  o! quam sua -- vis,
  o!
  o! quam sua -- vis,
  o! quam sua -- vis est,
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    r4 e2 r4
    r e e e\p
    r d!2\f r4
    r d d d\p
    r c\f h e
  }
}

BassFigures = \figuremode {
  r1
  r4 <6>8 <5> <4\+ 2>2
  r4 <6>2.
  r4 <6 _!>8 <5! \t> <4\+ 2>2
  r4 <6> <7 _+>2
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
